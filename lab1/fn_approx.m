
p = linspace(0, pi, 10);
t = sin(p) .* sin(5*p);
plot(p, t, 'o');

sizes = [3,6,10,20];
% mses = zeros();
for i=1:numel(sizes)
%     layers = sizes(i);
    layers = sizes(i);
    % purelin transfer fn
    % net = newfit(p, t, [layers], {'tansig' 'purelin'}, 'traingd', '', 'mse', {}, {}, '');

    % for question 10
    net = newfit(p, t, [layers], {'tansig' 'purelin'}, 'trainrp', '', 'mse', {}, {}, '');
    
    net = init(net);
    [trained_net, stats] = train(net, p, t);
    my_title = sprintf('%d hidden layers', layers); 
    fg = plotfit(trained_net, p, t);
    title(my_title);
    % saves figures!
%     f_name = sprintf("%s.jpg", my_title);
%     saveas(fg, f_name);
    % for question 6
%     mses(i) = mse(trained_net, t, sim(trained_net, p), {1}, 'regularlization', 0.1);
    pause;
end

% plot(mses);