echo '### running iteration 0'
python ../prepare_data/create_data.py tr1,tr2,tr3,tr4,tr5,tr6,tr7,tr8,tr9 tr0 /home/chardash/Desktop/geesline/
./train.sh /home/chardash/geesline_models/0
echo '### running iteration 1'
python ../prepare_data/create_data.py tr0,tr2,tr3,tr4,tr5,tr6,tr7,tr8,tr9 tr1 /home/chardash/Desktop/geesline/
./train.sh /home/chardash/geesline_models/1
echo '### running iteration 2'
python ../prepare_data/create_data.py tr0,tr1,tr3,tr4,tr5,tr6,tr7,tr8,tr9 tr2 /home/chardash/Desktop/geesline/
./train.sh /home/chardash/geesline_models/2
echo '### running iteration 3'
python ../prepare_data/create_data.py tr0,tr1,tr2,tr4,tr5,tr6,tr7,tr8,tr9 tr3 /home/chardash/Desktop/geesline/
./train.sh /home/chardash/geesline_models/3
echo '### running iteration 4'
python ../prepare_data/create_data.py tr0,tr1,tr2,tr3,tr5,tr6,tr7,tr8,tr9 tr4 /home/chardash/Desktop/geesline/
./train.sh /home/chardash/geesline_models/4
echo '### running iteration 5'
python ../prepare_data/create_data.py tr0,tr1,tr2,tr3,tr4,tr6,tr7,tr8,tr9 tr5 /home/chardash/Desktop/geesline/
./train.sh /home/chardash/geesline_models/5
echo '### running iteration 6'
python ../prepare_data/create_data.py tr0,tr1,tr2,tr3,tr4,tr5,tr7,tr8,tr9 tr6 /home/chardash/Desktop/geesline/
./train.sh /home/chardash/geesline_models/6
echo '### running iteration 7'
python ../prepare_data/create_data.py tr0,tr1,tr2,tr3,tr4,tr5,tr6,tr8,tr9 tr7 /home/chardash/Desktop/geesline/
./train.sh /home/chardash/geesline_models/7
echo '### running iteration 8'
python ../prepare_data/create_data.py tr0,tr1,tr2,tr3,tr4,tr5,tr6,tr7,tr9 tr8 /home/chardash/Desktop/geesline/
./train.sh /home/chardash/geesline_models/8
echo '### running iteration 9'
python ../prepare_data/create_data.py tr0,tr1,tr2,tr3,tr4,tr5,tr6,tr7,tr8 tr9 /home/chardash/Desktop/geesline/
./train.sh /home/chardash/geesline_models/9

#python ../prepare_data/create_data.py 2,6,7,8,9,14,15,16,18 19 /home/chardash/Desktop/whispe_audio/heh/
#./train.sh /home/chardash/geesline_models/d19

python ../prepare_data/create_data.py tr0,tr1,tr2,tr3,tr4,tr5,tr6,tr7 tr8,tr9 /home/chardash/Desktop/geesline/
./train.sh /home/chardash/geesline_models/89
