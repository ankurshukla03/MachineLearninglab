clear all;
load unknown_data;

somunknown = newsom(unknown_data,[10 10],'hextop','linkdist',300,10);

somunknown.trainParam.epochs = 300;
[trained_som, stats] = train(somunknown, unknown_data);

plotsomhits(trained_som,somunknown(:,:));