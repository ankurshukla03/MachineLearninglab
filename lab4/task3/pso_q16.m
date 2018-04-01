close all;
load lab4.mat;

options = psooptimset('DemoMode','fast',...
'PlotFcns',{@psoplotswarmsurf,@psoplotbestf},...
'PopInitRange',[-32;32],'InertiaWeight',1,...
'SocialAttraction',2,'CognitiveAttraction',2);

options = psooptimset(options, 'Generations', 500);
options = psooptimset(options,'VelocityLimit',30);


[x, fval] = pso(@ackleysfcn,20,[],[],[],[],[],[],[],options);