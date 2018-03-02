clear all;
load rgb_data.mat

somrgb = newsom(RGB, [10 10], 'gridtop', 'linkdist', 100, 5);


%somrgb.trainParams.epochs = 200;
[som_rgb, stats] = train(somrgb, RGB);

plot_colors(som_rgb);