function h=plotLeg(ax,pRes,hOld)
if ~isempty(hOld)
    delete(hOld);
end
PO=pRes(:,1);PA=pRes(:,2);PB=pRes(:,3);
PC=pRes(:,4);PD=pRes(:,5);PE=pRes(:,6);
PG=pRes(:,7);PT=pRes(:,8);PH=pRes(:,9);
%PM=pRes(:,10);PN=pRes(:,11);PK=pRes(:,12);
h=zeros(5,1);
h(1)=plot(ax,[PO(1) PA(1) PB(1) PC(1) PD(1)],[PO(2) PA(2) PB(2) PC(2) PD(2)],'-o','color',[0 0.4470 0.7410]);
h(2)=plot(ax,[PO(1) PE(1) PC(1)],[PO(2) PE(2) PC(2)],'-o','color',[0.8500 0.6940 0.1250]);
h(3)=plot(ax,[PT(1) PH(1)],[PT(2) PH(2)],'color',[0 0.4470 0.7410]);
h(4)=plot(ax,[PD(1) PG(1)],[PD(2) PG(2)],'color',[0 0.4470 0.7410]);
%h(5)=plot(ax,[PD(1) PM(1) PN(1) PK(1) PD(1)],[PD(2) PM(2) PN(2) PK(2) PD(2)],'color',[0.8500 0.6940 0.1250]);