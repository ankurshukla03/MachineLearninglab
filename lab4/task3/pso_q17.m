close all;
load lab4.mat;
%question 17 inertia weights

options = psooptimset('DemoMode','fast',...
'InertiaWeight',1,'PlotFcns',{@psoplotswarmsurf,@psoplotbestf,@psoplotvelocity},...
'PopInitRange',[-32;32] ,...
'InertiaWeight'      , [0.8,0.5], ... % weight
'SocialAttraction'   , 1.8, ... % c1
'CognitiveAttraction', 1.8);    % c2

options = psooptimset(options, 'Generations', 500);
options = psooptimset(options,'VelocityLimit',1);

[x, fval] = pso(@ackleysfcn,20,[],[],[],[],[],[],[],options);
