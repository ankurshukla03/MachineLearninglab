mgapar = GAparams;
mgapar.stop.direction = 'min';
load('gtop_lab4.mat');
mgapar.objParams.problem = MGADSMproblem;

% parameters
mgapar.select.func = 'proportional';
mgapar.select.pressure = 1;

mgapar.mutate.prob = 0.2;
mgapar.mutate.step = 0.25;
mgapar.mutate.decay = 'exponential';
mgapar.crossover.func = 'blend';
mgapar.crossover.prob = 0.75;
% mgapar.replace.comparative = true;
% mgapar.replace.elitist = false; % default is true
% bests = zeros(100, 1);

% for i=1:100 % mean = 28.141, best ind = 79.
rng(79);
[best, fit, stat] = GAsolver(22, PopInitRange', 'mgadsm', ...
                             50, 100, mgapar);
[verification, lower, upper] = verify(best, MGADSMproblem);
% bests(i) = fit;
% end                         
                                    