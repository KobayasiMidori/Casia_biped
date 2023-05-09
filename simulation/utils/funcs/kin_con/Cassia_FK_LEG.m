function [qLA,qLL] = Cassia_FK_LEG(q_pitch,q_knee)
%CASSIA_FK_LEG
%    [QLA,QLL] = CASSIA_FK_LEG(Q_PITCH,Q_KNEE)

%    This function was generated by the Symbolic Math Toolbox version 8.0.
%    30-Mar-2020 13:10:41

t2 = cos(q_knee);
t3 = sin(q_knee);
t4 = t2.*5.102989999999999e-1;
t5 = t3.*1.02199e-1;
t6 = t4+t5+5.20845e-1;
qLA = q_pitch-acos(1.0./sqrt(t6).*(t2.*4.954e-1-t3.*6.81e-2+4.91569e-1));
if nargout > 1
    qLL = sqrt(t6);
end
