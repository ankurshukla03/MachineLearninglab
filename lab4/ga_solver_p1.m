load lab4.mat;

% close all;

star = GAparams;
star.objParams.star = star1;
% draw on plot
% star.visual.active = 1;
% star.visual.step = 1;
% star.visual.func = 'circle';
star.crossover.prop = 0.9;

% solve
[best, fit, stat] = GAsolver(2, [0 20 ; 0 20], ...
    'circle', 50, 100, star);

ga_plot_diversity(stat);