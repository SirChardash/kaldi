echo '### running iteration 2'
python ../prepare_data/create_data.py tr1,tr2,tr3,tr4,tr5,tr6,tr7,tr8,tr9 vld /home/chardash/Desktop/baseline/whispe_audio_2/
./train.sh /home/chardash/baseline_models/2
echo '### running iteration 6'
python ../prepare_data/create_data.py tr1,tr2,tr3,tr4,tr5,tr6,tr7,tr8,tr9 vld /home/chardash/Desktop/baseline/whispe_audio_6/
./train.sh /home/chardash/baseline_models/6
echo '### running iteration 7'
python ../prepare_data/create_data.py tr1,tr2,tr3,tr4,tr5,tr6,tr7,tr8,tr9 vld /home/chardash/Desktop/baseline/whispe_audio_7/
./train.sh /home/chardash/baseline_models/7
echo '### running iteration 8'
python ../prepare_data/create_data.py tr1,tr2,tr3,tr4,tr5,tr6,tr7,tr8,tr9 vld /home/chardash/Desktop/baseline/whispe_audio_8/
./train.sh /home/chardash/baseline_models/8
echo '### running iteration 9'
python ../prepare_data/create_data.py tr1,tr2,tr3,tr4,tr5,tr6,tr7,tr8,tr9 vld /home/chardash/Desktop/baseline/whispe_audio_9/
./train.sh /home/chardash/baseline_models/9
echo '### running iteration 14'
python ../prepare_data/create_data.py tr1,tr2,tr3,tr4,tr5,tr6,tr7,tr8,tr9 vld /home/chardash/Desktop/baseline/whispe_audio_14/
./train.sh /home/chardash/baseline_models/14
echo '### running iteration 15'
python ../prepare_data/create_data.py tr1,tr2,tr3,tr4,tr5,tr6,tr7,tr8,tr9 vld /home/chardash/Desktop/baseline/whispe_audio_15/
./train.sh /home/chardash/baseline_models/15
echo '### running iteration 16'
python ../prepare_data/create_data.py tr1,tr2,tr3,tr4,tr5,tr6,tr7,tr8,tr9 vld /home/chardash/Desktop/baseline/whispe_audio_16/
./train.sh /home/chardash/baseline_models/16
echo '### running iteration 18'
python ../prepare_data/create_data.py tr1,tr2,tr3,tr4,tr5,tr6,tr7,tr8,tr9 vld /home/chardash/Desktop/baseline/whispe_audio_18/
./train.sh /home/chardash/baseline_models/18
echo '### running iteration 19'
python ../prepare_data/create_data.py tr1,tr2,tr3,tr4,tr5,tr6,tr7,tr8,tr9 vld /home/chardash/Desktop/baseline/whispe_audio_19/
./train.sh /home/chardash/baseline_models/19

#python ../prepare_data/create_data.py 2,6,7,8,9,14,15,16,18 19 /home/chardash/Desktop/whispe_audio/heh/
#./train.sh /home/chardash/baseline_models/d19
