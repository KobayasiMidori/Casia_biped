% plot the joint pos, vel and tor according to the ui selected recorded data

close all;
dataRecFolder='%s\\DataRec\\%s';
dir=sprintf(dataRecFolder,projectRoot,'*.mat');
[file,path]=uigetfile(dir,'Select a recorded data file');
if isequal(file,0)
    return;
end
load(fullfile(path,file));
load('recDataColName.mat');
%%% 
sparseSpace=100; % for a faster plot process
tLine=log_data.data(1:sparseSpace:end,61);
PosData=log_data.data(1:sparseSpace:end,[1:4,7:11,14]);
VelData=log_data.data(1:sparseSpace:end,[15:18,21:25,28]);
CmdTorData=log_data.data(1:sparseSpace:end,29:38);
ActTorData=log_data.data(1:sparseSpace:end,39:48);
CtrState=log_data.data(1:sparseSpace:end,49:end-1);
PasJointPos=log_data.data(1:sparseSpace:end,[5,6,11,12]);
PasJointVel=log_data.data(1:sparseSpace:end,[19,20,25,26]);

temp=find(CtrState(:,1)>=1); % skip the initial waiting time
startI=temp(1);
% temp=find(tLine>100);
% startI=temp(1);
tLine=tLine(startI:end);
PosData=PosData(startI:end,:);
VelData=VelData(startI:end,:);
CmdTorData=CmdTorData(startI:end,:);
ActTorData=ActTorData(startI:end,:);
CtrState=CtrState(startI:end,:);
PasJointPos=PasJointPos(startI:end,:);
PasJointVel=PasJointVel(startI:end,:);

indexLabel={'Roll','Yaw','Pitch','knee','foot'};
indexLabel2={'knee','foot','Shin','Tarsus'};
figure();
for i=1:3:7
subplot(3,3,i);
plot(tLine,PosData(:,(i+2)/3),'color',[0 0.4470 0.7410]);
hold on;grid on;
plot(tLine,PosData(:,(i+2)/3+5),'color',[0.8500 0.3250 0.0980]);
ylabel(sprintf('%s-Pos',indexLabel{(i+2)/3}));
legend('R','L');
subplot(3,3,i+1);
plot(tLine,VelData(:,(i+2)/3),'color',[0 0.4470 0.7410]);
hold on;grid on;
plot(tLine,VelData(:,(i+2)/3+5),'color',[0.8500 0.3250 0.0980]);
ylabel(sprintf('%s-Vel',indexLabel{(i+2)/3}));
legend('R','L');
subplot(3,3,i+2);
plot(tLine,ActTorData(:,(i+2)/3),'color',[0 0.4470 0.7410]);
hold on;grid on;
plot(tLine,ActTorData(:,(i+2)/3+5),'color',[0.8500 0.3250 0.0980]);
ylabel(sprintf('%s-ActTor',indexLabel{(i+2)/3}));
legend('R','L');
end
figure();
off=3;
for i=1:3:4
subplot(4,3,i);
plot(tLine,PosData(:,(i+2)/3+off),'color',[0 0.4470 0.7410]);
hold on;grid on;
plot(tLine,PosData(:,(i+2)/3+5+off),'color',[0.8500 0.3250 0.0980]);
ylabel(sprintf('%s-Pos',indexLabel2{(i+2)/3}));
legend('R','L');
subplot(4,3,i+1);
plot(tLine,VelData(:,(i+2)/3+off),'color',[0 0.4470 0.7410]);
hold on;grid on;
plot(tLine,VelData(:,(i+2)/3+5+off),'color',[0.8500 0.3250 0.0980]);
ylabel(sprintf('%s-Vel',indexLabel2{(i+2)/3}));
legend('R','L');
subplot(4,3,i+2);
plot(tLine,ActTorData(:,(i+2)/3+off),'color',[0 0.4470 0.7410]);
hold on;grid on;
plot(tLine,ActTorData(:,(i+2)/3+5+off),'color',[0.8500 0.3250 0.0980]);
ylabel(sprintf('%s-ActTor',indexLabel2{(i+2)/3}));
legend('R','L');
end
for i=7:3:10
subplot(4,3,i);
plot(tLine,PasJointPos(:,(i-4)/3),'color',[0 0.4470 0.7410]);
hold on;grid on;
plot(tLine,PasJointPos(:,(i-4)/3+2),'color',[0.8500 0.3250 0.0980]);
ylabel(sprintf('%s-Pos',indexLabel2{(i+2)/3}));
legend('R','L');
subplot(4,3,i+1);
plot(tLine,PasJointVel(:,(i-4)/3),'color',[0 0.4470 0.7410]);
hold on;grid on;
plot(tLine,PasJointVel(:,(i-4)/3+2),'color',[0.8500 0.3250 0.0980]);
ylabel(sprintf('%s-Vel',indexLabel2{(i+2)/3}));
legend('R','L');
end