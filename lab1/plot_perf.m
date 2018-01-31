function plot_perf = plot_perf(stats, t)
figure
ax = axes;
hold on
grid on
plot(ax, stats.perf);
title(t);

