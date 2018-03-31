%Task 2
%Minimizing the function
load lab4.mat
close all;

ack = GAparams;
ack.visual.type = 'surfc';% For 3-D plot use surf. surfc ,contour

ack.visual.bounds = [-2, 2];
ack.visual.interval = 0.05;

ack.stop.direction = 'min';
ack.visual.func = 'ackley';

funcs = {'1point', 'npoint', 'uniform', 'arithmetic', 'blend', 'linear'};
bests = zeros(numel(funcs), 1);
diversities = zeros(numel(funcs), 251);
ack.visual.active = false;
for i=1:numel(funcs) 
    fn = funcs{i};
    ack.crossover.func = fn;
    if strcmp(fn, 'npoint')
        ack.crossover.n = 10;
    end
    [best, fit, stat] = GAsolver(20, [-32, 32], ...
                             'ackley', 200, 250, ack);
    bests(i) = stat.eliteFit(1);
    diversities(i,:) = stat.diversity;
end

%% print 
close all;
figure(10)
hold on
for j=1:numel(funcs)
   fprintf("%s best fit %0.2f \n", funcs{j}, bests(j)); 
   plot(diversities(j,:), 'DisplayName', funcs{j});
   xlim([0 251]);
end
legend('Location', 'northwestoutside')
hold off