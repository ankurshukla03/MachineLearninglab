p = [[0; 0] [0; 1] [1; 0] [1; 1]];
t = [0 1 1 0];

% trainrp = resilient backprop
net = newff(p, t, [2], {'tansig' 'logsig'}, 'trainrp', '', 'mse', {}, {}, '');

close all;
figure
ax = axes;
title('');
grid on
hold on
for i=1:10
    net = init(net);
    [trained_net, stats] = train(net, p, t);
    net.trainParam.delta0 = 0.07;
    net.trainParam.delt_inc = 1.2;
    plot(ax, stats.perf);
end
hold off;

% 
% net.trainParam.deltamax
% net.trainParam.delta_inc
% net.trainParam.delta_dec

