function [f] = ga_fit_mgadsm(population, bounds, param)
    [popsize, dim] = size(population);
    f = zeros(1,popsize);
    for i=1:popsize
        f(i) = mga_dsm(population(i,:),param.problem);
    end