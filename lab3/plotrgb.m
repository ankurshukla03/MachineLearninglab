clear all;
load rgb_data.mat

% tweak epochs, initial neighborhood size
somrgb = newsom(RGB, [10 10], 'gridtop', 'linkdist', 100, 6);

[trained_som, stats] = train(somrgb, RGB);

plot_colors(trained_som);