function [I]  = Torque2Current(T, Index)
%Copyright:zkt 20200918
%------Torque2Current-----
%Input:  T ---- electrical torque of motor
%       Index ---- Motor number
%Output: I ---- Current of motor
%Type: 1 -- Kollmorgen, Km = 0.106, N = 50
%      2 -- TQ, Km = 0.1261, N = 37
%      3 -- Kollmorgen, Km = 0.0955, N = 50
Type = [4,1,2,2,3,4,1,2,2,3];
Km = [0.106,0.1261,0.0955,0.1261];
N = [50,37,50,33];
I = T/(Km(Type(Index))*N(Type(Index)));
end