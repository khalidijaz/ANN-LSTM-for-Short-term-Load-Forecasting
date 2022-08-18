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
plot(xData,data1','LineWidth',LW,'color','r'); hold on;
plot(xData,data2','LineWidth',LW,'color','b'); hold on;
xlabel('Time Stamp','FontSize',20 ,'fontname','Times New Roman');
ylabel('Load Demand (MW)','FontSize',20,'fontname','Times New Roman');
%set(gca,'FontSize',25,'color',[.950 .950 .950])% colored background
title('(a)');
set(gca,'FontSize',20)
AX=legend('Target Load','Load Predicted by ANN');
AX.FontSize = 20;
datetick('x','mm/dd/yyyy','keepticks','keeplimits'); 
zoom(fig1,'on')
h=fig1;
set(h,'PaperOrientation','landscape');
set(h,'PaperUnits','normalized');
set(h,'PaperPosition', [0 0 1 1]);
filename1 = sprintf('Target_Load_vs_ANN.pdf');
saveas(fig1,filename1,'pdf')
%------------------------------------------
 
fig2=figure;
plot(xData,data1','LineWidth',LW,'color','r'); hold on;
plot(xData,data3','LineWidth',LW,'color','b'); hold on;
xlabel('Time Stamp','FontSize',20 ,'fontname','Times New Roman');
ylabel('Load Demand (MW)','FontSize',20,'fontname','Times New Roman');
title('(b)');
%set(gca,'FontSize',25,'color',[.950 .950 .950])% colored background
set(gca,'FontSize',20)
AX=legend('Target Load','Load Predicted by Proposed LSTM');
AX.FontSize = 20;
datetick('x','mm/dd/yyyy','keepticks','keeplimits'); 
zoom(fig1,'on')
h=fig2;
set(h,'PaperOrientation','landscape');
set(h,'PaperUnits','normalized');
set(h,'PaperPosition', [0 0 1 1]);
filename2 = sprintf('Target_Load_vs_LSTM.pdf');
saveas(fig2,filename2,'pdf')
%-------------------------------------

fig3=figure;
plot(xData,data1','LineWidth',LW,'color','r'); hold on;
plot(xData,data4','LineWidth',LW,'color','b'); hold on;
xlabel('Time Stamp','FontSize',20 ,'fontname','Times New Roman');
ylabel('Load Demand (MW)','FontSize',20,'fontname','Times New Roman');
title('(c)');
%set(gca,'FontSize',25,'color',[.950 .950 .950])% colored background
set(gca,'FontSize',20)
AX=legend('Target Load','Load Predicted by LSTM Model 1');
AX.FontSize = 20;
datetick('x','mm/dd/yyyy','keepticks','keeplimits'); 
h=fig3;
set(h,'PaperOrientation','landscape');
set(h,'PaperUnits','normalized');
set(h,'PaperPosition', [0 0 1 1]);
filename3 = sprintf('Target_Load_vs_LSTM_Model_1.pdf');
saveas(fig3,filename3,'pdf')
%---------------------------------------

fig4=figure;
plot(xData,data1','LineWidth',LW,'color','r'); hold on;
plot(xData,data4','LineWidth',LW,'color','b'); hold on;
xlabel('Time Stamp','FontSize',20 ,'fontname','Times New Roman');
ylabel('Load Demand (MW)','FontSize',20,'fontname','Times New Roman');
title('(d)');
%set(gca,'FontSize',25,'color',[.950 .950 .950])% colored background
set(gca,'FontSize',20)
AX=legend('Target Load','Load Predicted by LSTM Model 2');
AX.FontSize = 20;
datetick('x','mm/dd/yyyy','keepticks','keeplimits'); 
h=fig4;
set(h,'PaperOrientation','landscape');
set(h,'PaperUnits','normalized');
set(h,'PaperPosition', [0 0 1 1]);
filename4 = sprintf('Target_Load_vs_LSTM_Model_2.pdf');
saveas(fig4,filename4,'pdf')
%---------------------------------------
fig5=figure;
plot(xData,data1','LineWidth',LW,'color','r'); hold on;
plot(xData,data5','LineWidth',LW,'color','b'); hold on;
xlabel('Time Stamp','FontSize',20 ,'fontname','Times New Roman');
ylabel('Load Demand (MW)','FontSize',20,'fontname','Times New Roman');
title('(e)');
%set(gca,'FontSize',25,'color',[.950 .950 .950])% colored background
set(gca,'FontSize',20)
AX=legend('Target Load','Load Predicted by LSTM Model 3');
AX.FontSize = 20;
datetick('x','mm/dd/yyyy','keepticks','keeplimits'); 
h=fig5;
set(h,'PaperOrientation','landscape');
set(h,'PaperUnits','normalized');
set(h,'PaperPosition', [0 0 1 1]);
filename5 = sprintf('Target_Load_vs_LSTM_Model_3.pdf');
saveas(fig5,filename5,'pdf')

fig6=figure;
plot(xData,data1','LineWidth',LW,'color','r'); hold on;
plot(xData,data5','LineWidth',LW,'color','b'); hold on;
xlabel('Time Stamp','FontSize',20 ,'fontname','Times New Roman');
ylabel('Load Demand (MW)','FontSize',20,'fontname','Times New Roman');
title('(f)');
%set(gca,'FontSize',25,'color',[.950 .950 .950])% colored background
set(gca,'FontSize',20)
AX=legend('Target Load','Load Predicted by CNN-LSTM');
AX.FontSize = 20;
datetick('x','mm/dd/yyyy','keepticks','keeplimits'); 
h=fig6;
set(h,'PaperOrientation','landscape');
set(h,'PaperUnits','normalized');
set(h,'PaperPosition', [0 0 1 1]);
filename6 = sprintf('Target_Load_vs_CNN_LSTM.pdf');
saveas(fig6,filename6,'pdf')


