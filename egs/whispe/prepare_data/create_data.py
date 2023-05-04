import sys
import os

from create_data_utils import *

if len(sys.argv) != 4:
    print('''Bad params. Use it like this:

         python {0} <train speakers> <test speakers> <corpus dir>
         python {0} 1,2,3 4,5,6 ~/corpus
    '''.format(sys.argv[0]))
    quit()

train_speakers = sys.argv[1].split(',')
test_speakers = sys.argv[2].split(',')
corpus_dir = re.sub('/$', '', sys.argv[3])

print(train_speakers)
print(test_speakers)
print(corpus_dir)

train_files = get_files(corpus_dir, train_speakers)
test_files = get_files(corpus_dir, test_speakers)

os.system('rm -rf .data')
os.system('mv data .data')
os.system('mkdir data')
os.system('mkdir data/train')
os.system('mkdir data/test')

os.system('cp -r local data/local')

save(wav_scp(train_files), 'data/train/wav.scp')
save(text(train_files), 'data/train/text')
save(utt2spk(train_files), 'data/train/utt2spk')

save(wav_scp(test_files), 'data/test/wav.scp')
save(text(test_files), 'data/test/text')
save(utt2spk(test_files), 'data/test/utt2spk')
