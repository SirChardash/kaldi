# obezbjedi mogucnost preskakanja koraka
# parametrizuj kopiranje data

echo '### regenerating manual data files ##########'
rm -rf data
rm -rf exp

cp -r ../prepare_data/data data

echo '### generating remaining data dir files #####'

utils/utt2spk_to_spk2utt.pl data/train/utt2spk > data/train/spk2utt
utils/utt2spk_to_spk2utt.pl data/test/utt2spk > data/test/spk2utt
steps/make_mfcc.sh --nj 20 --cmd "run.pl" data/train exp/make_mfcc/train $mfccdir
steps/make_mfcc.sh --nj 20 --cmd "run.pl" data/test exp/make_mfcc/test $mfccdir
steps/compute_cmvn_stats.sh data/train exp/make_mfcc/train $mfccdir
steps/compute_cmvn_stats.sh data/test exp/make_mfcc/test $mfccdir

utils/prepare_lang.sh data/local/dict "<UNK>" data/local/lang data/lang

echo '### align train ############################'

./align_train.sh

echo '### training ###############################'

local/chain/tuning/run_tdnn_1j.sh
./copy_final_result.sh
