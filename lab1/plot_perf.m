function plot_perf = plot_perf(stats, lr)
figure
ax = axes;
hold on
grid on
t = sprintf('lr = %.02f', lr);
plot(ax, stats.perf);
title(t);

