clear all;
Date = datetime('now');
bb = strcat(string(Date.Hour),string(Date.Minute));
%��ȡ�ڴ�����
f=SimulinkRealTime.fileSystem;
h=fopen(f,'dedata.dat');
data=fread(f,h);
f.fclose(h);
log_data = SimulinkRealTime.utils.getFileScopeData(data);
savedata = strcat('data',bb,'.mat');
save(savedata,'log_data');
