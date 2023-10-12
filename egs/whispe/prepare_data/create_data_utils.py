import os
import re

corpus = {
    'boja1': 'bela',
    'boja2': 'zhuta',
    'boja3': 'crna',
    'boja4': 'crvena',
    'boja5': 'plava',
    'boja6': 'zelena',
    'broj1': 'nula',
    'broj2': 'jedan',
    'broj3': 'dva',
    'broj4': 'tri',
    'broj5': 'chetiri',
    'broj6': 'pet',
    'broj7': 'shest',
    'broj8': 'sedam',
    'broj9': 'osam',
    'broj10': 'devet',
    'broj11': 'deset',
    'broj12': 'sto',
    'broj13': 'hiljadu',
    'broj14': 'milion',
    'rec1': 'mirko',
    'rec2': 'zhurka',
    'rec3': 'petar',
    'rec4': 'demonstracije',
    'rec5': 'standard',
    'rec6': 'pijaca',
    'rec7': 'padavine',
    'rec8': 'ponedeljak',
    'rec9': 'godina',
    'rec10': 'predstava',
    'rec11': 'kompjuteri',
    'rec12': 'inostranstvo',
    'rec13': 'drvo',
    'rec14': 'mirjana',
    'rec15': 'more',
    'rec16': 'kisha',
    'rec17': 'zgrade',
    'rec18': 'klinci',
    'rec19': 'milan',
    'rec20': 'rezultati',
    'rec21': 'telefon',
    'rec22': 'svetlo',
    'rec23': 'prozor',
    'rec24': 'ruke',
    'rec25': 'lokal',
    'rec26': 'kljuch',
    'rec27': 'sunce',
    'rec28': 'pare',
    'rec29': 'sef',
    'rec30': 'blok'
}


def get_utterance_id(file):
    parts = re.sub('.+/', '', re.sub('n\\.wav', '', file)).split('_')
    return '{0}-{1}-{2}'.format(parts[1].zfill(4), parts[0].zfill(8), parts[2].zfill(4))


def get_files(corpus_dir, speakers):
    files = []
    for speaker in speakers:
        root = '{0}/{1}'.format(corpus_dir, speaker)
        speaker_files = [item for item in os.listdir(root)]  # if item.startswith('rec')
        files.extend(map(lambda x: '{0}/{1}'.format(root, x), speaker_files))
    return files


def speaker_id(file):
    return re.sub('.+_', '', re.sub('_[^_]+$', '', file)).zfill(4)


def wav_scp(files):
    return map(lambda file: '{0} {1}'.format(get_utterance_id(file), file), files)


def text(files):
    return map(lambda file: '{0} {1}'.format(get_utterance_id(file), corpus[re.sub('(.*/)|(_.*)', '', file)]), files)


def utt2spk(files):
    return map(lambda file: '{0} {1}'.format(get_utterance_id(file), speaker_id(file)), files)


def save(entries, path):
    to_save = sorted(entries)
    file = open(path, 'a')
    for entry in to_save:
        file.write(entry)
        file.write('\n')
    file.close()
    print('saved {0} entries to {1}'.format(len(to_save), path))
