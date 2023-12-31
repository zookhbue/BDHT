clear all;

%  nc vs. emci: acc, sen, spe, auc; 
%  nc vs. lmci: acc, sen, spe, auc; 

data = load('data.txt');
acoec = data(1:2,:);
mse = data(3:4,:);
gbdm = data(5:6,:);
mme = data(7:8,:);
ours = data(9:10,:);
    
x = [1:2:9];
y = [acoec(1,:);mse(1,:);gbdm(1,:);mme(1,:);ours(1,:)];
figure;
plot(x, y(:,1),'k--p','LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',12);
hold on;
plot(x, y(:,2),'b--p','LineWidth',1,'MarkerEdgeColor','b','MarkerFaceColor','b','MarkerSize',12);
plot(x, y(:,3),'g--p','LineWidth',1,'MarkerEdgeColor','g','MarkerFaceColor','g','MarkerSize',12);
plot(x, y(:,4),'r--p','LineWidth',1,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerSize',12);
xlim([0,10]);
ylim([0.82 0.92]);
set(gca, 'YGrid','on','LineWidth',2.0); 
set(gca,'ytick',0.82:0.02:0.92,'FontWeight','normal');
set(gca,'xtick',x,'FontWeight','normal');
set(gca,'XTickLabel',{'Acoec-fd','MSE-GCN','GBDM','MME-GCN','Ours'},'FontSize',12,'Fontname','times new Roman','FontWeight','bold')
ylabel('','FontSize',12,'Fontname','times new Roman','FontWeight','bold');
legend('ACC','SEN','SPE','AUC');
grid off;


z = [acoec(2,:);mse(2,:);gbdm(2,:);mme(2,:);ours(2,:)];
figure;
plot(x, z(:,1),'k--p','LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',12);
hold on;
plot(x, z(:,2),'b--p','LineWidth',1,'MarkerEdgeColor','b','MarkerFaceColor','b','MarkerSize',12);
plot(x, z(:,3),'g--p','LineWidth',1,'MarkerEdgeColor','g','MarkerFaceColor','g','MarkerSize',12);
plot(x, z(:,4),'r--p','LineWidth',1,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerSize',12);
xlim([0,10]);
ylim([0.88 0.98]);
set(gca, 'YGrid','on','LineWidth',2.0); 
set(gca,'ytick',0.88:0.02:0.98,'FontWeight','normal');
set(gca,'xtick',x,'FontWeight','normal');
set(gca,'XTickLabel',{'Acoec-fd','MSE-GCN','GBDM','MME-GCN','Ours'},'FontSize',12,'Fontname','times new Roman','FontWeight','bold')
ylabel('','FontSize',12,'Fontname','times new Roman','FontWeight','bold');
legend('ACC','SEN','SPE','AUC');
grid off;




