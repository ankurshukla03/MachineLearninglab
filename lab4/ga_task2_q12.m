%Task 2
%Minimizing the function q12
load lab4.mat
close all;

ack = GAparams;
ack.visual.type = 'surfc';% For 3-D plot use surf. surfc ,contour

ack.visual.bounds = [-2, 2];
ack.visual.interval = 0.05;

ack.stop.direction = 'min';
ack.visual.func = 'ackley';

[best, fit, stat] = GAsolver(20, [-32, 32], ...
                             'ackley', 200, 250, ack);
 

%% print 
% close all;
% figure(10)
% hold on
% for j=1:numel(funcs)
%    fprintf("%s best fit %0.2f \n", funcs{j}, bests(j)); 
%    plot(diversities(j,:), 'DisplayName', funcs{j});
% end
% legend()
% hold off