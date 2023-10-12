echo '### running iteration 01'
python ../prepare_data/create_data.py tr2,tr3,tr4,tr5,tr6,tr7,tr8,tr9 tr0,tr1 /home/chardash/Desktop/geesline/
./train.sh /home/chardash/geesline_models_1/01
echo '### running iteration 12'
python ../prepare_data/create_data.py tr0,tr3,tr4,tr5,tr6,tr7,tr8,tr9 tr1,tr2 /home/chardash/Desktop/geesline/
./train.sh /home/chardash/geesline_models_1/12
echo '### running iteration 23'
python ../prepare_data/create_data.py tr0,tr1,tr4,tr5,tr6,tr7,tr8,tr9 tr2,tr3 /home/chardash/Desktop/geesline/
./train.sh /home/chardash/geesline_models_1/23
echo '### running iteration 34'
python ../prepare_data/create_data.py tr0,tr1,tr2,tr5,tr6,tr7,tr8,tr9 tr3,tr4 /home/chardash/Desktop/geesline/
./train.sh /home/chardash/geesline_models_1/34
echo '### running iteration 45'
python ../prepare_data/create_data.py tr0,tr1,tr2,tr3,tr6,tr7,tr8,tr9 tr4,tr5 /home/chardash/Desktop/geesline/
./train.sh /home/chardash/geesline_models_1/45
echo '### running iteration 56'
python ../prepare_data/create_data.py tr0,tr1,tr2,tr3,tr4,tr7,tr8,tr9 tr5,tr6 /home/chardash/Desktop/geesline/
./train.sh /home/chardash/geesline_models_1/56
echo '### running iteration 67'
python ../prepare_data/create_data.py tr0,tr1,tr2,tr3,tr4,tr5,tr8,tr9 tr6,tr7 /home/chardash/Desktop/geesline/
./train.sh /home/chardash/geesline_models_1/67
echo '### running iteration 78'
python ../prepare_data/create_data.py tr0,tr1,tr2,tr3,tr4,tr5,tr6,tr9 tr7,tr8 /home/chardash/Desktop/geesline/
./train.sh /home/chardash/geesline_models_1/78
echo '### running iteration 89'
python ../prepare_data/create_data.py tr0,tr1,tr2,tr3,tr4,tr5,tr6,tr7 tr8,tr9 /home/chardash/Desktop/geesline/
./train.sh /home/chardash/geesline_models_1/89
echo '### running iteration 90'
python ../prepare_data/create_data.py tr1,tr2,tr3,tr4,tr5,tr6,tr7,tr8 tr9,tr0 /home/chardash/Desktop/geesline/
./train.sh /home/chardash/geesline_models_1/90
