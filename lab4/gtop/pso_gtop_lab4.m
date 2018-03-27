function f = pso_gtop_lab4(x)
    persistent prob;
    if isempty(prob)
        prob = coder.load('gtop_lab4.mat');
    end
    if strcmp(x,'init')
        f.PopInitRange = prob.PopInitRange;
        f.ConstrBoundary = 'reflect';
        f.Vectorized = 'off';
    else
        f = mga_dsm(x,prob.MGADSMproblem);
    end
   