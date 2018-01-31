
p = [[0; 0] [0; 1] [1; 0] [1; 1]];
t = [0 1 1 0];

% tansig: fn for hidden layers
% logsig: fn output layer
% traingd: gradient descent
% mse: mean square error
% {}_1: cell aray of input pre-processing
% {}_2: dividing data into subsets
% '': 
net = newff(p, t, [2], {'tansig' 'logsig'}, 'traingd', '', 'mse', {}, {}, '');

close all;
net = init(net);
net.trainParam.lr = 0.01;
[trained_net, stats] = train(net, p, t);
plot_perf(stats, 'lr = 0.01');

net = init(net);
net.trainParam.lr = 2;
[trained_net, stats] = train(net, p, t);
plot_perf(stats, 'lr = 2');

net = init(net);
net.trainParam.lr = 20;
[trained_net, stats] = train(net, p, t);
plot_perf(stats, 'lr = 20');

