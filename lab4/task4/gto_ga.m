mgapar = GAparams;
mgapar.stop.direction = 'min';
load('gtop_lab4.mat');
mgapar.objParams.problem = MGADSMproblem;

% parameters
mgapar.select.func = 'proportional';

mgapar.mutate.prob = 0.2;
mgapar.mutate.decay = 'exponential';
mgapar.crossover.func = 'blend';
% bests = zeros(100, 1);

% for i=1:100 % mean = 28.141, best ind = 79 -> 15.0349
rng(79)
% rng(i);
[best, fit, stat] = GAsolver(22, PopInitRange', 'mgadsm', ...
                             50, 100, mgapar);
[verification, lower, upper] = verify(best, MGADSMproblem);
% if verification == 1
%     bests(i) = fit;
% else 
%     bests(i) = inf;
% end
% end                         
                                    