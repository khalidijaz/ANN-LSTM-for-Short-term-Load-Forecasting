[num,txt,raw] = xlsread('LSTM_Results_LOAD.csv');

time = vertcat(txt(2:end,1)) ;
starttime = datenum(time(1,:));
endtime  =  datenum(time(end,:));
xData = linspace(starttime,endtime,size(time,1));

data1 = num(:,1) ; %ANN Predicted
data2 = num(:,2) ;% Target Load
data3 = num(:,3) ;% Proposed LSTM
data4 = num(:,4) ;% Model 1
data5 = num(:,5) ;%Model 2
data6 = num(:,6) ;%Model 3
data7 = num(:,7) ;% CNN LSTM
d=178;
LW=0.8;

fig=figure;

subplot(6,1,1)

plot(xData(1:d),data2(1:d)','LineWidth',LW,'color','r'); hold on;
plot(xData(1:d),data1(1:d)','LineWidth',LW,'color','b'); hold off;
datetick('x','mm/dd/yyyy','keepticks','keeplimits'); 
%ylabel('Load Demand (MW)','FontSize',15,'fontname','Times New Roman');
title('(a)');
AX=legend('Target Load','Load Predicted by ANN');
AX.FontSize =10;

subplot(6,1,2)

plot(xData(1:d),data2(1:d)','LineWidth',LW,'color','r'); hold on;
plot(xData(1:d),data3(1:d)','LineWidth',LW,'color','b'); hold off;
datetick('x','mm/dd/yyyy','keepticks','keeplimits'); 
%ylabel('Load Demand (MW)','FontSize',15,'fontname','Times New Roman');
AX=legend('Target Load','Load Predicted by Proposed LSTM');
AX.FontSize =10;
title('(b)');
subplot(6,1,3)
plot(xData(1:d),data2(1:d)','LineWidth',LW,'color','r'); hold on;
plot(xData(1:d),data4(1:d)','LineWidth',LW,'color','b'); hold off;
%ylabel('Load Demand (MW)','FontSize',15,'fontname','Times New Roman');
AX=legend('Target Load','Load Predicted by LSTM Model 1');
title('(c)');
AX.FontSize =10;
datetick('x','mm/dd/yyyy','keepticks','keeplimits'); 
subplot(6,1,4)

plot(xData(1:d),data2(1:d)','LineWidth',LW,'color','r'); hold on;
plot(xData(1:d),data5(1:d)','LineWidth',LW,'color','b'); hold off;
%ylabel('Load Demand (MW)','FontSize',15,'fontname','Times New Roman');
AX=legend('Target Load','Load Predicted by LSTM Model 2');
datetick('x','mm/dd/yyyy','keepticks','keeplimits'); 
AX.FontSize =10;
title('(d)');
subplot(6,1,5)

plot(xData(1:d),data2(1:d)','LineWidth',LW,'color','r'); hold on;
plot(xData(1:d),data6(1:d)','LineWidth',LW,'color','b'); hold off;
%ylabel('Load Demand (MW)','FontSize',15,'fontname','Times New Roman');
datetick('x','mm/dd/yyyy','keepticks','keeplimits'); 
AX=legend('Target Load','Load Predicted by LSTM Model 3');
AX.FontSize =10;
title('(e)');
subplot(6,1,6)
plot(xData(1:d),data2(1:d)','LineWidth',LW,'color','r'); hold on;
plot(xData(1:d),data7(1:d)','LineWidth',LW,'color','b'); hold off;
datetick('x','mm/dd/yyyy','keepticks','keeplimits'); 
AX=legend('Target Load','Load Predicted by CNN-LSTM');
AX.FontSize =10;
title('(f)');

han=axes(fig,'visible','off'); 
han.Title.Visible='on';
han.XLabel.Visible='on';
han.YLabel.Visible='on';
ylabel(han,'Load Demand (MW)');
xlabel(han,'Time Stamp');
%title(han,'Load Prediction using six DL Models');

h=fig;
set(gca,'FontSize',15)
set(h,'PaperOrientation','landscape');
set(h,'PaperUnits','normalized');
set(h,'PaperPosition', [0 0 1 1]);
filename1 = sprintf('Target_Load_vs_6_predicted_loads_weekly.pdf');
saveas(fig,filename1,'pdf')