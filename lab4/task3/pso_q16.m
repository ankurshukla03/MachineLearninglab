close all;
load lab4.mat;

options = psooptimset('DemoMode','fast',...
'PlotFcns',{@psoplotswarmsurf,@psoplotbestf},...
'PopInitRange',[-32;32],'InertiaWeight',1,...
'SocialAttraction',2,'CognitiveAttraction',2,'VeloctiyLimit',30);

options = psooptimset(options, 'Generations', 500);


[x, fval] = pso(@ackleysfcn,@psoplotvelocity,20,[],[],[],[],[],[],[],options);