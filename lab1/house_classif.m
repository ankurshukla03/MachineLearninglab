% Task 4 
clear all;

% creates two globals houseInputs, houseTargets.
load house_dataset;
p = houseInputs;
norm_p = mapminmax(p);

t = houseTargets;

% 20 hidden layers, resilient b-prop, using divrand split!
net = newff(norm_p, houseTargets, [20], ...
            {'tansig' 'purelin'}, 'trainrp', '', ...
            'mse',{},{}, 'dividerand');

for i=1:10
    net = init(net);
    net.trainParam.max_fail = 1000;
    net.trainParam.min_grad = 0;
    net.trainParam.epochs = 5000;
    [trained_net, stats] = train(net, norm_p, t);
    
    % plot...
    close all;
    figure
    grid on
    plotperform(stats);
    pause;
end