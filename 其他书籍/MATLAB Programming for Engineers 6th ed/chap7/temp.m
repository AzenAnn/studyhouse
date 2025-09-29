name = {'Rozy Bellamy'; ...
        'Jose Fernandez'; ...
        'James Johnson'; ...
        'Keith Nguyen'};
age = [23; 22; 18; 25];
exam1 = [90; 85; 82; 95];
exam2 = [95; 93; 89; 89];
exam3 = [89; 90; 79; 93];
varNames = {'Name','Age','Exam_1','Exam_2','Exam_3'};
t = table(name,age,exam1,exam2,exam3,'VariableNames',varNames);

t;

ave = mean(t{:,3:5})
t_new = table('Average',0,ave(1), ave(2), ave(3),'VariableNames',varNames)

t = [t; t_new]
