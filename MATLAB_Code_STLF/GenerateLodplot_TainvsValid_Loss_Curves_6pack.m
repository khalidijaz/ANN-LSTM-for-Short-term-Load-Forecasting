
T1 = xlsread('train_val_loss_excel_csv.csv',1,'A2:A1001');
V1 = xlsread('train_val_loss_excel_csv.csv',1,'B2:B1001');

T2 = xlsread('train_val_loss_excel_csv.csv',1,'C2:C1001');
V2 = xlsread('train_val_loss_excel_csv.csv',1,'D2:D1001');

T3 = xlsread('train_val_loss_excel_csv.csv',1,'E2:E1001');
V3 = xlsread('train_val_loss_excel_csv.csv',1,'F2:F1001');

T4 = xlsread('train_val_loss_excel_csv.csv',1,'G2:G1001');
V4 = xlsread('train_val_loss_excel_csv.csv',1,'H2:H1001');

T5 = xlsread('train_val_loss_excel_csv.csv',1,'I2:I1001');
V5 = xlsread('train_val_loss_excel_csv.csv',1,'J2:J1001');

T6 = xlsread('train_val_loss_excel_csv.csv',1,'K2:K1001');
V6 = xlsread('train_val_loss_excel_csv.csv',1,'L2:L1001');

t = linspace(0,(1000/pi)*pi,1000); % values in Epoch

fig1=figure;
semilogy(t,T1','LineWidth',1.8,'color','r'); hold on;
semilogy(t,V1','LineWidth',1.8,'color','b'); hold on;
xlabel('Epochs','FontSize',20 ,'fontname','Times New Roman');
ylabel('Loss','FontSize',20,'fontname','Times New Roman');
%set(gca,'FontSize',25,'color',[.950 .950 .950])% colored background
set(gca,'FontSize',25)
AX=legend('Training Loss','Validation Loss');
AX.FontSize = 20;
zoom(fig1,'on')
h=fig1;
set(h,'PaperOrientation','landscape');
set(h,'PaperUnits','normalized');
set(h,'PaperPosition', [0 0 1 1]);
filename1 = sprintf('TVL_ANN.pdf');
saveas(fig1,filename1,'pdf')
%------------------------------------------

fig2=figure;
semilogy(t,T2, 'LineWidth',1.8,'color','r') ;hold on;
semilogy(t,V2, 'LineWidth',1.8,'color','b') ;hold on;
xlabel('Epochs','FontSize',20 ,'fontname','Times New Roman');
ylabel('Loss','FontSize',20,'fontname','Times New Roman');
set(gca,'FontSize',25)
AX=legend('Training Loss','Validation Loss');
AX.FontSize = 20;
h=fig2;
set(h,'PaperOrientation','landscape');
set(h,'PaperUnits','normalized');
set(h,'PaperPosition', [0 0 1 1]);
filename2 = sprintf('TVL_LSTM.pdf');
saveas(fig2,filename2,'pdf')
%-------------------------------------

fig3=figure;
semilogy(t,T3, 'LineWidth',1.8,'color','r') ;hold on;
semilogy(t,V3, 'LineWidth',1.8,'color','b') ;hold on;
xlabel('Epochs','FontSize',20 ,'fontname','Times New Roman');
ylabel('Loss','FontSize',20,'fontname','Times New Roman');
%xlim([0 10])
ylim([0.0001 0.1])
set(gca,'FontSize',25)
AX=legend('Training Loss','Validation Loss');
AX.FontSize = 20;
h=fig3;
set(h,'PaperOrientation','landscape');
set(h,'PaperUnits','normalized');
set(h,'PaperPosition', [0 0 1 1]);
filename3 = sprintf('TVL_M1.pdf');
saveas(fig3,filename3,'pdf')
%---------------------------------------

fig4=figure;
semilogy(t,T4, 'LineWidth',1.8,'color','r') ;hold on;
semilogy(t,V4, 'LineWidth',1.8,'color','b') ;hold on;
xlabel('Epochs','FontSize',20 ,'fontname','Times New Roman');
ylabel('Loss','FontSize',20,'fontname','Times New Roman');
set(gca,'FontSize',25)
AX=legend('Training Loss','Validation Loss');
AX.FontSize = 20;
h=fig4;
set(h,'PaperOrientation','landscape');
set(h,'PaperUnits','normalized');
set(h,'PaperPosition', [0 0 1 1]);
filename4 = sprintf('TVL_M2.pdf');
saveas(fig4,filename4,'pdf')
% %---------------------------------------------
fig5=figure;
semilogy(t,T5, 'LineWidth',1.8,'color','r') ;hold on;
semilogy(t,V5, 'LineWidth',1.8,'color','b') ;hold on;
xlabel('Epochs','FontSize',20 ,'fontname','Times New Roman');
ylabel('Loss','FontSize',20,'fontname','Times New Roman');
set(gca,'FontSize',25)
AX=legend('Training Loss','Validation Loss');
AX.FontSize = 20;
h=fig5;
set(h,'PaperOrientation','landscape');
set(h,'PaperUnits','normalized');
set(h,'PaperPosition', [0 0 1 1]);
filename5 = sprintf('TVL_M3.pdf');
saveas(fig5,filename5,'pdf')
% %-----------------------------------
% 
fig6=figure;
semilogy(t,T6, 'LineWidth',1.8,'color','r') ;hold on;
semilogy(t,V6, 'LineWidth',1.8,'color','b') ;hold on;
xlabel('Epochs','FontSize',20 ,'fontname','Times New Roman');
ylabel('Loss','FontSize',20,'fontname','Times New Roman');
ylim([0.0001 0.1])
%set(gca,'FontSize',25,'color',[.950 .950 .950])% colored background
set(gca,'FontSize',25)
AX=legend('Training Loss','Validation Loss');
AX.FontSize = 20;
zoom(fig1,'on')
h=fig6;
set(h,'PaperOrientation','landscape');
set(h,'PaperUnits','normalized');
set(h,'PaperPosition', [0 0 1 1]);
filename6 = sprintf('TVL_CNN_LSTM.pdf');
saveas(fig6,filename6,'pdf')
% 
% 
% 
% 
