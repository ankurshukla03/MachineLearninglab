%%Task1

load sphere_data.mat;
%som = newsom(P10, [10 10], 'hextop', 'linkdist', 100, 5);
som = newsom(P30, [10 10], 'hextop', 'linkdist', 100, 5);

%Training SOFM by P10data set
%[som_P10, stats] = train(som, P10);
[som_P30, stats] = train(som, P30);

%plotsomhits(som_P10, P10(:,1:100)) % Winning nodes for F1.
%plotsomhits(som_P10, P10(:,101:200)) % Winning nodes for F2

%%Plot Weights
% Plot the nodes of som_P10 in the input space.
%plotsom(som_P10.iw{1,1}, som_P10.layers{1}.distances)
%hold on
% Plot the data points in P10.
%plot3(P10(1,:), P10(2,:), P10(3,:), '+k')