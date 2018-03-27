function [verification, lower, upper] = verify(result_vec, MGADSMproblem)
    lower = result_vec >= MGADSMproblem.bounds.lower;
    upper = result_vec <= MGADSMproblem.bounds.upper;
    verification = all(lower) && all(upper);
end