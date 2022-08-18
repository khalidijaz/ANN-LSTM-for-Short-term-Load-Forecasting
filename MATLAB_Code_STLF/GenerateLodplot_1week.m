
%[sun,txt,raw] = xlsread('weeklyGraph.csv');
Hours = xlsread('weeklyGraph.csv',1,'B2:B25')
data1 = xlsread('weeklyGraph.csv',1,'D2:D25')

data2 = xlsread('weeklyGraph.csv',1,'G2:G25');
data3 = xlsread('weeklyGraph.csv',1,'J2:J25');
data4 = xlsread('weeklyGraph.csv',1,'M2:M25');
data5 = xlsread('weeklyGraph.csv',1,'P2:P25');
data6 = xlsread('weeklyGraph.csv',1,'S2:S25');
data7 = xlsread('weeklyGraph.csv',1,'V2:V25');
fig1=figure;

Hours = linspace(1,24,size(Hours,1));
plot(Hours,data1,'-o','LineWidth',1.5,'color','r') ;hold on;
plot(Hours,data2,'-*','LineWidth',1.5,'color','b') ;hold on;
plot(Hours,data3,'-s','LineWidth',1.5,'color','y') ;hold on;
plot(Hours,data4,'-h','LineWidth',1.5,'color','k') ;hold on;
plot(Hours,data5,'-x','LineWidth',1.5,'color','c') ;hold on;
plot(Hours,data6,'-d','LineWidth',1.5,'color','m') ;hold on;
plot(Hours,data7,'-p','LineWidth',1.5,'color','g') ;hold on;
%
xlabel('Time of day(Hours)','FontSize',20 ,'fontname','Times New Roman');
ylabel('Load Demand (MW)','FontSize',20,'fontname','Times New Roman');
set(gca,'FontSize',25)
AX=legend('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');
AX.FontSize = 15;
% datetick('x','mm/dd/yyyy','keepticks','keeplimits'); 
zoom(fig1,'on')
h=fig1;
set(h,'PaperOrientation','landscape');
set(h,'PaperUnits','normalized');
set(h,'PaperPosition', [0 0 1 1]);
filename1 = sprintf('DailyLoad.pdf');
saveas(fig1,filename1,'pdf')


% ann=xlsread('LSTM_Results.csv',1,'B2:B3491')
% target=xlsread('LSTM_Results.csv',1,'C2:C3491')
% lstmt=xlsread('LSTM_Results.csv',1,'D2:D3491')
% 
% fig1=figure;
% %t = linspace(0,31.5*pi,102); % values in Epoch
% plot(X,ann,'color', 'b'); hold on;
% plot(X,lstm,'color', 'r'); hold on;
% plot(X,target,'color', 'k'); hold on;
% xlabel('Date','FontSize',20 ,'fontname','Times New Roman');
% ylabel('Load(MW)','FontSize',20,'fontname','Times New Roman');