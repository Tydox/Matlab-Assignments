clear; clc %#ok<*NOPTS,*NASGU>
%% ex1
text1 = ('7xgHTsTRXkuII0IcGuSTUlH8Npl11T70r6ln4IYTY1monDOYcm9U8Px1doTGBTVERjalNC5OQpcTDNGh3B9KwBCLR9cdgL4d3QYZMIpziQHEmB23GGm30CKB5ZQX8AAeRClHQsazd8CghyeJTtPed8XxSTcpDUHJBPXf7g3AtZnf41HJzQmilwcNOEPQktfO79CBu67QBBM7jBxQuruaJSt6WhLvX8TjmewdTgHRM6UZZQWH8pCe32O9cSLZhXTFa9WjaJQUlWMtKAy8ghMyT5GPKZKbZGWrs31cYR92KvvPuNLVyuVtj1b01QoTMVt3BA7hlAIKtrOTuNxBOWZQEKcpfOzrVagjI2UnRVZzGCSKlwoYxiHmNleXZw8vJuIXxDPxXdWUe2KEdiYrn8pVL2DJmRfVnsHgZCI2z1lSkmNvNcUgBfRuBhgBAjIzXzmhG5m0JEnvzMZm4YnlXXvjc7A1jFp0LarlJAmWxDlV1BFCmxTyfoDp');
CalcLetters(text1);

text2 = '7xgHTsTRXkuII0IcGuSTUlH8Npl11T70r6ln4IYTY1monDOYcm9U8Px1doTGBTVERjalNC5OQpcTDNGh3B9KwBCLR9cdgL4d3QYZMIpziQHEmB23GGm30CKB5ZQX8AAeRClHQsazd8CghyeJTtPed8XxSTcpDUHJBPXf7g3AtZnf41HJzQmilwcNOEPQktfO79CBu67QBBM7jBxQuruaJSt6WhLvX8TjmewdTgHRM6UZZQWH8pCe32O9cSLZhXTFa9WjaJQUlWMtKAy8ghMyT5GPKZKbZGWrs31cYR92KvvPuNLVyuVtj1b01QoTMVt3BA7hlAIKtrOTuNxBOWZQEKcpfOzrVagjI2UnRVZzGCSKlwoYxiHmNleXZw8vJuIXxDPxXdWUe2KEdiYrn8pVL2DJmRfVnsHgZCI2z1lSkmNvNcUgBfRuBhgBAjIzXzmhG5m0JEnvzMZm4YnlXXvjc7A1jFp0LarlJAmWxDlV1BFCmxTyfoDp';
enc_text2 = encryp(text2);
fprintf('Encrypted Text: %s \nDecrypted Text: %s\n',enc_text2,text2);

%% ex2
text3 = 'abcdefghijklmnopqrstuxwxyz';
triplets(text3);

text4 = '123456789abc';
printPyramid(text4);

%% ex3
text5 = isEqual(5,9)
text5 = isEqual(100,100)

tmp = [1:5;20:24;9:13]
text6 = getMatrixSize(tmp)

tmp = 'daniel hello!';
text7 = strcont(tmp)

tmp = '1530';
text8 = getTime(tmp)
tmp = '0111';
text8 = getTime(tmp)

%% ex4

N=4;
an_coeff = a_n_coefs(N)
s_n_vals = s_N(4, 1,[-0.1, 0.1, 0.3])
plot_s_n(5,200,1);

