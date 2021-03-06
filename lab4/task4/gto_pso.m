%For PSO question 26
options = pso_gtop_lab4('init');

LB = options.PopInitRange(1,:);
UB = options.PopInitRange(2,:);

options = psooptimset(options,'Generations',500);
options = psooptimset(options,'VeloctiyLimit',1.3);
options = psooptimset(options,'InertiaWeight',[0.8,0.5]);
options = psooptimset(options,'SocialAttraction',1);
options = psooptimset(options,'CognitiveAttraction',1);
%options = psooptimset(options,'PlotFcns',{@psoplotswarmsurf,@psoplotbestf,@psoplotvelocity});
n = 50;
bests = zeros(n, 1);

for i=1:n
    rng(i)
    [x,fval] = pso(@pso_gtop_lab4,22,[],[],[],[],LB,UB,[],options);
    [verification, lower, upper] = verify(x, MGADSMproblem);
    bests(i) = fval;
end
