load lab4.mat;

close all;

star = GAparams;
star.objParams.star = star1;
% draw on plot
% star.visual.active = 1;
% star.visual.func = 'circle';
average_gen = 0;

star.select.func = 'rank';
star.replace.elitist = false;
% solve
n = 15;
for i=1:n
    close all;
[best, fit, stat] = GAsolver(2, [0 20 ; 0 20], ...
    'circle', 50, 100, star);
ga_plot_fitness(stat);
average_gen = average_gen + stat.eliteDob(1);
end

average_gen / n
