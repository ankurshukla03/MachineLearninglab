%Task 2
%Minimizing the function
load lab4.mat
close all;

ack = GAparams;
ack.visual.type = 'surfc';% For 3-D plot use surf. surfc ,contour

ack.visual.bounds = [-2, 2];
ack.visual.interval = 0.05;

ga_visual_ackley([],[],[],[],[],[],ack.visual,[],[]);