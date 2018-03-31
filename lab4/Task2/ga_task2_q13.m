%Task 2
%Minimizing the function q13
load lab4.mat
close all;

ack = GAparams;
ack.visual.type = 'surfc';% For 3-D plot use surf. surfc ,contour

ack.visual.bounds = [-2, 2];
ack.visual.interval = 0.05;

ack.stop.direction = 'min';
ack.visual.func = 'ackley';
%ack.mutate.proportional = false;
ack.mutate.prob = 0.03;
ack.mutate.decay = 'linear';
ack.crossover.func = 'blend';

ack.replace.comparative = true;

[best, fit, stat] = GAsolver(20, [-32, 32], ...
                             'ackley', 200, 250, ack);

plot(stat.diversity)
 