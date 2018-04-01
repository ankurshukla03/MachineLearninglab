close all;
load lab4.mat;
%question 17 inertia weights

options = psooptimset('DemoMode','fast',...
'InertiaWeight',1,'PlotFcns',{@psoplotswarmsurf,@psoplotbestf,@psoplotvelocity},...
'PopInitRange',[-32;32],'InertiaWeight',1,...
'SocialAttraction',2,'CognitiveAttraction',2);

options = psooptimset(options, 'Generations', 500);
%options = psooptimset(options,'VelocityLimit',0.8);

[x, fval] = pso(@ackleysfcn,20,[],[],[],[],[],[],[],options);
