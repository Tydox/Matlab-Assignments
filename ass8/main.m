clear; clc

%% ex1
Name={'Abraham';'Itzhak';'Jaacob';'Yehuda';'Reuven';'Dan';'Asher';'Levi';'Jossef'};
Age=[25;23;22;31;43;25;20;30;29];   
English=[58;75;87;44;68;74;98;32;79];
Physics=[55;90;64;56;78;36;84;64;59];
Math =[70;77;80;76;49;83;81;94;93];

Tb=table(Name,Age,Math,Physics,English)

avg_Age = mean(Tb.Age);
avg_Math = mean(Tb.Math);
avg_Physics = mean(Tb.Physics);
avg_English = mean(Tb.English);
fprintf('Average Grades Table:\nMath:\t\t%.2f\nPhysics:\t%.2f\nEnglish:\t%.2f\n',avg_Math,avg_Physics,avg_English);

num_courses = 3;
Tb.Average = (Tb.Math + Tb.Physics + Tb.English)./ num_courses

new_user = {'Gila', 40, 87, 97, 82 ,0};
Tb = [Tb;new_user];
Tb.Average = (Tb.Math + Tb.Physics + Tb.English)./ num_courses
cTb = table2cell(Tb);

 cTb = [Tb.Properties.VariableNames;cTb]


%% ex2
fileName='grades.txt';
fileID = fopen(fileName,"r");
format = '%d%d%d';
size=[3 inf];
grade = fscanf(fileID,format,size)';
fclose(fileID);
writematrix(grade,'grades_new.txt','Delimiter','tab');

grading = 0:100;
subplot(2,1,1)
h1 = histogram(grade(:,2),grading);
subplot(2,1,2)
h2 = histogram(grade(:,3),grading);

writematrix(grade(:,[1 2]),'grades.xlsx','Sheet','moed A');
writematrix(grade(:,[1 3]),'grades.xlsx','Sheet','moed B');

%% ex3
%playerStrcut = struct('pname',[],'lname',[],'min_played',[],'points',[],'rebounds',[],'assists',[]);
football('boxScore.txt')

%% ex 4
fs=8000;
%tone = single_dtmf('1',200);
%dial = atdt('+972 54-5402896');

dial = atdt('12311231369m369m9#9631m9#9631mm1m1m1mmm1m1m1');
plotSound(dial,fs);
soundsc(dial,fs);
pause((length(dial))./fs  + 0.5);


dial = atdt('3212333m222m333m3212333322321');
soundsc(dial,fs);
pause((length(dial))./fs  + 0.5)



dial=atdt('1234567890#*');
soundsc(dial,fs);
pause((length(dial))./fs  + 0.5);



dial=atdt_real('23#7',[0.5, 0.2, 0.9, 0.4],[0.2, 0.5, 0.1, 0.3]);
soundsc(dial,fs);















