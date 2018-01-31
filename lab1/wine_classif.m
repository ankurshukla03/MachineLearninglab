% TASK 3
clear all;

load wine_dataset;
% creates two globals wineInputs, wineTargets.
p = wineInputs;
t = wineTargets;

% greater than 4 layers seems best.
net = newff(p, t, [4], {'tansig' 'logsig'}, 'trainrp', '', 'mse', {}, {}, '');

net = init(net);
% train rp
net.trainParam.delta0 = 0.009; % low initial delta, this is very sensitive
net.trainParam.delt_inc = 1.1; % difference between inc and dec is small
net.trainParam.delt_dec = 0.9; % ensures the network does not shift too far one way.

% train gd
% net.trainParam.lr = 0.1;
[trained_net, stats] = train(net, p, t);

rows = 1;
cols = 2;

close all;
grid on
figure(1)
plot(stats.perf);

figure(2)
% we cannot subplot confusion matrices :( 
plotconfusion(wineTargets, sim(trained_net, wineInputs));
