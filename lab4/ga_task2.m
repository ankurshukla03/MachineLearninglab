%Task 2
%Minimizing the function
load lab4.mat
close all;
ack = GAparams;
ack.visual.type = 'mesh';


ga_visual_ackley([],[],[],[],[],[],ack.visual,[],[]);