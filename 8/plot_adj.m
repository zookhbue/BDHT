% plot  circularGraph
% four examples

clear all;
aal=importdata('aal.txt'); % AAL90 atlas
myLabel = cell(90);
for roi = 1:90
    t1=split(aal{roi}); t2=t1{2};
    myLabel{roi} = t2;
end
myColorMap0 = repmat([0.00 0.00 0.00],90,1);
myColorMap1 = repmat([0.12 0.56 1.00],90,1);
myColorMap2 = repmat([1.00 0.84 0.00],90,1);
myColorMap3 = repmat([1.00 0.38 0.00],90,1);



NC_avg = load(['nc_example.txt']); 
figure;set(gcf,'unit','centimeters','position',[1 1 15 15]);
circularGraph1(NC_avg,'Colormap',myColorMap0,'Label',myLabel);



SMC_avg = load(['smc_example.txt']);
figure;set(gcf,'unit','centimeters','position',[1 1 15 15]);
circularGraph1(SMC_avg,'Colormap',myColorMap1,'Label',myLabel);




EMCI_avg = load(['emci_example.txt']);
figure;set(gcf,'unit','centimeters','position',[1 1 15 15]);
circularGraph1(EMCI_avg,'Colormap',myColorMap2,'Label',myLabel);




LMCI_avg = load(['lmci_example.txt']);
figure;set(gcf,'unit','centimeters','position',[1 1 15 15]);
circularGraph1(LMCI_avg,'Colormap',myColorMap3,'Label',myLabel);



