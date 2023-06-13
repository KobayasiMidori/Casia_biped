 
% add a user dialog to decide whether to save the recorded data
% recorded data file is named after the current time
% MUST run setup.m before used

f=SimulinkRealTime.fileSystem;
h=fopen(f,'CADATA.dat');
data=fread(f,h);
f.fclose(h);
log_data = SimulinkRealTime.utils.getFileScopeData(data); 
fileName=string(datetime('now','Format','uuuu_MM_dd''T''HH_mm_ss'));
fileName=sprintf('%s.mat',fileName);
que=['Save the recorded data to ' fileName '?'];
res=questdlg(que,'Data Save?','Yes','No','Yes');
dataRecFolder='%s\\DataRec\\%s';
dir_name=sprintf(dataRecFolder,projectRoot,fileName);
if strcmp(res,'Yes')
    save(dir_name,'log_data');
end
%%
D = dir(dir_name);
size_file = D.bytes/2^10;
fprintf('received file size=%g KB\n',size_file)
clear fileName que res dataRecFolder dir res;