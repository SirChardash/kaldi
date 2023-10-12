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
working_dir = sys.path[0]

print(train_speakers)
print(test_speakers)
print(corpus_dir)

train_files = get_files(corpus_dir, train_speakers)
test_files = get_files(corpus_dir, test_speakers)

os.system('rm -rf %s/.data' % working_dir)
os.system('mv %s/data %s/.data' % (working_dir, working_dir))
os.system('mkdir %s/data' % working_dir)
os.system('mkdir %s/data/train' % working_dir)
os.system('mkdir %s/data/test' % working_dir)

os.system('cp -r %s/local %s/data/local' % (working_dir, working_dir))

save(wav_scp(train_files), '%s/data/train/wav.scp' % working_dir)
save(text(train_files), '%s/data/train/text' % working_dir)
save(utt2spk(train_files), '%s/data/train/utt2spk' % working_dir)

save(wav_scp(test_files), '%s/data/test/wav.scp' % working_dir)
save(text(test_files), '%s/data/test/text' % working_dir)
save(utt2spk(test_files), '%s/data/test/utt2spk' % working_dir)
