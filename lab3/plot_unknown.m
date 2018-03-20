clear all;
load unknown_data;

somunknown = newsom(unknown_data,[10 10],'hextop','linkdist',300,10);

somunknown.trainParam.epochs = 300;
[trained_som, stats] = train(somunknown, unknown_data);

%plotsomhits(trained_som,unknown_data(:,:));
figure(10)
plotsomhits(trained_som, point1); %winning node for class I
title('Class 1');
figure(11)
plotsomhits(trained_som, point2); %winning node for class II
title('Class 2');
figure(12)
plotsomhits(trained_som, point3); %winning node for class III
title('Class 3');
figure(13)
plotsomhits(trained_som, point4); %winning node for class III
title('Class 4');
figure(14)
plotsomhits(trained_som, point5); %winning node for class III
title('Class 5');