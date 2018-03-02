%%Task1

clear all;
load sphere_data.mat;
som10 = newsom(P10, [10 10], 'hextop', 'linkdist', 100, 5);
som20 = newsom(P20, [10 10], 'hextop', 'linkdist', 100, 5);
som30 = newsom(P30, [10 10], 'hextop', 'linkdist', 100, 5);

%Training SOFM by P10data set
[som_P10, stats] = train(som10, P10);
[som_P20, stats] = train(som20, P20);
[som_P30, stats] = train(som30, P30);

save('som_P10.mat','som_P10');
save('som_P20.mat','som_P20');
save('som_P30.mat','som_P30');
%plotsomhits(som_P10, P10(:,1:100)) % Winning nodes for F1.
%plotsomhits(som_P10, P10(:,101:200)) % Winning nodes for F2

%%Plot Weights
% Plot the nodes of som_P10 in the input space.
%plotsom(som_P10.iw{1,1}, som_P10.layers{1}.distances)
%hold on
% Plot the data points in P10.
%plot3(P10(1,:), P10(2,:), P10(3,:), '+k')