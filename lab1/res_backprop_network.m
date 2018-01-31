p = [[0; 0] [0; 1] [1; 0] [1; 1]];
t = [0 1 1 0];

% trainrp = resilient backprop
net = newff(p, t, [2], {'tansig' 'logsig'}, 'trainrp', '', 'mse', {}, {}, '');

% close all;
figure
ax = axes;
for i=1:10
    
    net = init(net);
    [trained_net, stats] = train(net, p, t);
    net.trainParam.delta0 = 0.001;
    plot_perf(stats, 'delta0 = 0.001');
end

% 
% net.trainParam.deltamax
% net.trainParam.delta_inc
% net.trainParam.delta_dec

