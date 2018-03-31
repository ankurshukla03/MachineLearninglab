load lab4.mat;

close all;

star = GAparams;
star.objParams.star = star1;
% draw on plot
% star.visual.active = 1;
% star.visual.func = 'circle';
best_fit = 0;
star.select.func = 'rank';
hold on;
for i=2:-0.25:1
    % solve
    star.select.pressure = i;
    [best, fit, stat] = GAsolver(2, [0 20 ; 0 20], ...
        'circle', 50, 100, star);
    plot([0:stat.generations],stat.diversity, ...
        'DisplayName', sprintf('pressure %0.2f', i));
    if max(stat.fitness(:)) > best_fit 
        best_fit = max(stat.fitness(:));
    end
end

title('Population Diversity');
xlabel('Generation');
ylabel('Diversity');
xlim([0 stat.generations]);
legend();
hold off;
