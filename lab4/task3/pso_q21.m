close all;
load lab4.mat;
%question 21 constriction coefficients

options = psooptimset('DemoMode','fast',...
'InertiaWeight',1,'PlotFcns',{@psoplotswarmsurf,@psoplotbestf,@psoplotvelocity},...
'PopInitRange',[-32;32] ,...
'InertiaWeight'      , 0.268, ... % weight
'SocialAttraction'   , 1.072, ... % c1
'CognitiveAttraction', 0.536);    % c2

options = psooptimset(options, 'Generations', 500);
%options = psooptimset(options,'VelocityLimit',1.0);

[x, fval] = pso(@ackleysfcn,20,[],[],[],[],[],[],[],options);
