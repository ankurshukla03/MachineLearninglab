load iris_dataset;

somiris = newsom(irisInputs, [10 10], 'hextop', 'linkdist', 200, 4);
somiris.trainParam.epochs = 300; % 100 seems good
[trained_som, stats] = train(somiris, irisInputs);

figure(10)
plotsomhits(somiris, irisInputs(:,1:50)); %winning node for class I
title('Class 1');
figure(11)
plotsomhits(somiris, irisInputs(:,51:100)); %winning node for class II
title('Class 2');
figure(12)
plotsomhits(somiris, irisInputs(:,101:150)); %winning node for class III
title('Class 3');