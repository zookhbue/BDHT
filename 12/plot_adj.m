% plot  circularGraph


clear all;
aal=importdata('aal.txt');
myLabel = cell(90);
for roi = 1:90
    t1=split(aal{roi}); t2=t1{2};
    myLabel{roi} = t2;
end
% myColorMap = lines(90);
% myColorMap = rand(90,3);

myColorMap0 = repmat([0.00 0.00 0.00],90,1);
myColorMap1 = repmat([0.12 0.56 1.00],90,1);
myColorMap2 = repmat([1.00 0.84 0.00],90,1);
myColorMap3 = repmat([1.00 0.38 0.00],90,1);


data = load('circularGraph_smc_nc_maxROI.txt');
figure;set(gcf,'unit','centimeters','position',[1 1 15 15]);
circularGraph1(data,'Colormap',myColorMap1,'Label',myLabel);

data = load('circularGraph_emci_smc_maxROI.txt');
figure;set(gcf,'unit','centimeters','position',[1 1 15 15]);
circularGraph1(data,'Colormap',myColorMap2,'Label',myLabel);

data = load('circularGraph_lmci_emci_maxROI.txt');
figure;set(gcf,'unit','centimeters','position',[1 1 15 15]);
circularGraph1(data,'Colormap',myColorMap3,'Label',myLabel);


