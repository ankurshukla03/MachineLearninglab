clear all;
load wine_dataset;

somwine = newsom(wineInputs, [10 10], 'hextop', 'linkdist', 100, 3);

somwine.trainParam.epochs = 100;
[som_wine, stats] = train(somwine, wineInputs);

figure(10)
plotsomhits(som_wine, wineInputs(:,1:59)); %winning node for class I
figure(11)
plotsomhits(som_wine, wineInputs(:,60:130)); %winning node for class II
figure(12)
plotsomhits(som_wine, wineInputs(:,131:178)); %winning node for class III
% plotsomhits(som_wine, wineInputs(:,:));