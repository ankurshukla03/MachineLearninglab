load lab4.mat;

close all;

star = GAparams;
% star.objParams.star = star1; % 3.67   at [ 15.8895 11.4433 ]
% star.objParams.star = star2; % 3.0650   at [ 16.8481 15.8938 ]
star.objParams.star = star3;   % 2.8550 at [  6.1457  4.7283 ]
% draw on plot
star.visual.active = 1;
star.visual.func = 'circle';

star.select.func = 'rank';
star.select.pressure = 1;
% star.crossover.prob = 0.9;
% star.mutate.prob = 0.05;
% star.replace.elitist = false; % default is true

% solve
[best, fit, stat] = GAsolver(2, [0 20 ; 0 20], ...
    'circle', 50, 300, star);
