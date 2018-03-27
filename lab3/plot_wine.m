clear all;
load wine_dataset;
normWineInputs = mapminmax(wineInputs);

somwine = newsom(normWineInputs, [10 10], 'hextop', 'linkdist', 200, 6);

somwine.trainParam.epochs = 300;
[som_wine, stats] = train(somwine, normWineInputs);

% figure(10)
% plotsomhits(som_wine, normWineInputs(:,1:59)); %winning node for class I
% title('Class 1');
% figure(11)
% plotsomhits(som_wine, normWineInputs(:,60:130)); %winning node for class II
% title('Class 2');
% figure(12)
% plotsomhits(som_wine, normWineInputs(:,131:178)); %winning node for class III
% title('Class 3');
%%plotsomhits(som_wine, wineInputs(:,:));