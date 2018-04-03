%For PSO question 26
options = pso_gtop_lab4('init');
% 
% options = psooptimset('DemoMode','fast',...
% 'PlotFcns',{@psoplotswarmsurf,@psoplotbestf,@psoplotvelocity},...
% 'PopInitRange',[-32;32] ,...
% 'InertiaWeight'      , 0.7968, ... % weight
% 'SocialAttraction'   , 1.49, ... % c1
% 'CognitiveAttraction', 1.49);    % c2

LB = options.PopInitRange(1,:);
UB = options.PopInitRange(2,:);

options = psooptimset(options,'Generations',1000);
options = psooptimset(options,'VeloctiyLimit',1);
options = psooptimset(options,'InertiaWeight',[0.8,0.5]);
options = psooptimset(options,'SocialAttraction',1);
options = psooptimset(options,'CognitiveAttraction',1);
options = psooptimset(options,'PlotFcns',{@psoplotswarmsurf,@psoplotbestf,@psoplotvelocity});

[x,fval] = pso(@pso_gtop_lab4,22,[],[],[],[],LB,UB,[],options);