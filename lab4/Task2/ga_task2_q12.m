%Task 2
%Minimizing the function q12
load lab4.mat
close all;

ack = GAparams;
ack.visual.type = 'surfc';% For 3-D plot use surf. surfc ,contour

ack.visual.bounds = [-2, 2];
ack.visual.interval = 0.05;

ack.stop.direction = 'min';
ack.visual.func = 'ackley';

bests = zeros(numel(funcs), 1);
diversities = zeros(numel(funcs), 251);
funcs = {'none', 'linear', 'exponential'};
ack.mutate.prob = 0.03;
ack.mutate.proportional = true; % default false

for i=1:numel(funcs)
    ack.mutate.decay = funcs{i};
    [best, fit, stat] = GAsolver(20, [-32, 32], ...
                             'ackley', 200, 250, ack);
    bests(i) = stat.eliteFit(1);
    diversities(i,:) = stat.diversity;
end

close all;
figure(10)
hold on
for j=1:numel(funcs)
   fprintf("%s best fit: %0.3f \n", funcs{j}, bests(j)); 
   plot(diversities(j,:), 'DisplayName', funcs{j});
end
legend()
hold off
