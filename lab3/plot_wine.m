clear all;
load wine_dataset;

somwine = newsom(wineInputs, [5 5], 'hextop', 'linkdist', 300, 6);

somwine.trainParam.epochs = 300;
[som_wine, stats] = train(somwine, wineInputs);

figure(10)
plotsomhits(som_wine, wineInputs(:,1:59)); %winning node for class I
figure(11)
plotsomhits(som_wine, wineInputs(:,60:130)); %winning node for class II
figure(12)
plotsomhits(som_wine, wineInputs(:,131:178)); %winning node for class III
% plotsomhits(som_wine, wineInputs(:,:));