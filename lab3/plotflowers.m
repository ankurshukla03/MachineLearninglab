load iris_dataset;

somiris = newsom(irisInputs, [10 10], 'hextop', 'linkdist', 200, 3);
somiris.trainParam.epochs = 100; % 100 seems good
[trained_som, stats] = train(somiris, irisInputs);