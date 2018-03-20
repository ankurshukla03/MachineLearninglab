clear all;
load wine_dataset;

somwine = newsom(wineInputs, [5 5], 'hextop', 'linkdist', 100, 5);

somwine.trainParam.epochs = 100;
[som_wine, stats] = train(somwine, wineInputs);

%plotsomhits(som_wine, wineInputs(:,1:59))%winning node for class I
%plotsomhits(som_wine, wineInputs(:,60:130))%winning node for class II
%plotsomhits(som_wine, wineInputs(:,131:178))%winning node for class III
plotsomhits(som_wine, wineInputs(:,:));