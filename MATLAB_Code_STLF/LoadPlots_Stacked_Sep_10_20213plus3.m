[num,txt,raw] = xlsread('complete_Load_plots.csv');
time = vertcat(txt(2:end,1)) ;
starttime = datenum(time(1,:));
endtime  =  datenum(time(end,:));
xData = linspace(starttime,endtime,size(time,1));

data1 = num(:,1) ; %Target Load
data2 = num(:,2) ;% Predcitedion by ann
data3 = num(:,3) ;% Predcitedion by Prop LSTM
data4 = num(:,4) ;% Predcitedion by Model 1
data5 = num(:,5) ;% Predcitedion by Model 2
data6 = num(:,6) ;% Predcitedion by Model 3
data7 = num(:,7) ;% Predcitedion by CNN LSTM
LW=0.8;

fig1=figure;

subplot(3,1,1)

plot(xData,data1','LineWidth',LW,'color','r'); hold on;
plot(xData,data2','LineWidth',LW,'color','b'); hold off;
datetick('x','mm/dd/yyyy','keepticks','keeplimits'); 
%ylabel('Load Demand (MW)','FontSize',15,'fontname','Times New Roman');
title('(a)');
AX=legend('Target Load','Load Predicted by ANN');
AX.FontSize =10;

subplot(3,1,2)

plot(xData,data1','LineWidth',LW,'color','r'); hold on;
plot(xData,data3','LineWidth',LW,'color','b'); hold off;
datetick('x','mm/dd/yyyy','keepticks','keeplimits'); 
%ylabel('Load Demand (MW)','FontSize',15,'fontname','Times New Roman');
AX=legend('Target Load','Load Predicted by Proposed LSTM');
AX.FontSize =10;
title('(b)');
subplot(3,1,3)
plot(xData,data1','LineWidth',LW,'color','r'); hold on;
plot(xData,data4','LineWidth',LW,'color','b'); hold off;
%ylabel('Load Demand (MW)','FontSize',15,'fontname','Times New Roman');
AX=legend('Target Load','Load Predicted by LSTM Model 1');
title('(c)');
AX.FontSize =10;
datetick('x','mm/dd/yyyy','keepticks','keeplimits'); 



han=axes(fig1,'visible','off'); 
han.Title.Visible='on';
han.XLabel.Visible='on';
han.YLabel.Visible='on';
ylabel(han,'Load Demand (MW)');
xlabel(han,'Time Stamp');
%title(han,'Load Prediction using six DL Models');

h=fig1;
set(gca,'FontSize',15)
set(h,'PaperOrientation','landscape');
set(h,'PaperUnits','normalized');
set(h,'PaperPosition', [0 0 1 1]);
filename1 = sprintf('Target_Load_vs_3_predicted_loads1.pdf');
saveas(fig1,filename1,'pdf')
%===================================================================
fig2=figure;
subplot(3,1,1)

plot(xData,data1','LineWidth',LW,'color','r'); hold on;
plot(xData,data4','LineWidth',LW,'color','b'); hold off;
%ylabel('Load Demand (MW)','FontSize',15,'fontname','Times New Roman');
AX=legend('Target Load','Load Predicted by LSTM Model 2');
datetick('x','mm/dd/yyyy','keepticks','keeplimits'); 
AX.FontSize =10;
title('(d)');
subplot(3,1,2)

plot(xData,data1','LineWidth',LW,'color','r'); hold on;
plot(xData,data5','LineWidth',LW,'color','b'); hold off;
%ylabel('Load Demand (MW)','FontSize',15,'fontname','Times New Roman');
datetick('x','mm/dd/yyyy','keepticks','keeplimits'); 
AX=legend('Target Load','Load Predicted by LSTM Model 3');
AX.FontSize =10;
title('(e)');
subplot(3,1,3)
plot(xData,data1','LineWidth',LW,'color','r'); hold on;
plot(xData,data6','LineWidth',LW,'color','b'); hold off;
datetick('x','mm/dd/yyyy','keepticks','keeplimits'); 
AX=legend('Target Load','Load Predicted by CNN-LSTM');
AX.FontSize =10;
title('(f)');

han=axes(fig2,'visible','off'); 
han.Title.Visible='on';
han.XLabel.Visible='on';
han.YLabel.Visible='on';
ylabel(han,'Load Demand (MW)');
xlabel(han,'Time Stamp');
%title(han,'Load Prediction using six DL Models');

h=fig2;
set(gca,'FontSize',15)
set(h,'PaperOrientation','landscape');
set(h,'PaperUnits','normalized');
set(h,'PaperPosition', [0 0 1 1]);
filename2 = sprintf('Target_Load_vs_3_predicted_loads2.pdf');
saveas(fig2,filename2,'pdf')