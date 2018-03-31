close all;
load rgb_data.mat

% tweak epochs, initial neighborhood size
% high neighbor hood size -> more desaturated, 3 is sufficient.
% high order steps -> more smooth, 100 is sufficient
% high epochs -> overtrained?
somrgb = newsom(RGB, [10 10], 'gridtop', 'linkdist', 100, 27);
somrgb.trainParam.epochs = 100; % 100 seems good
[trained_som, stats] = train(somrgb, RGB);

plot_colors(trained_som);