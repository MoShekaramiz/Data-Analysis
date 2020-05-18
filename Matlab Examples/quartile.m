function [Q,IQR] = quartile(X)
% Mohammad Shekaramiz, PhD, ECE, Utah Valley University
% This code is written for the student learning purposes.
% You can modify it to make it efficient.
% -------------------------------------------------------------------------
%quartile
%
%Syntax
%1. Q = quartile(X)
%2. [Q,IQR] = quartile(X)
%
%Description 
%1. Calculates the quartile (Q1, Q2 and Q3) of the data.
%2. Interquartile range (IQR) of the data.
%
X_sort = sort(X);
Len_X = length(X);
% Q = [];
if rem(Len_X,2)~=0
    for k = 0.25:0.25:0.75
        Q_Indx = (Len_X+1)*k;
        Q(4*k) = X_sort(Q_Indx);        
    end
else
    for k = 0.25:0.25:0.75
        Qmin_Indx = floor((Len_X+1)*k);
        Qmax_Indx = ceil((Len_X+1)*k);
        Q(4*k) = mean(X_sort(Qmin_Indx) ,X_sort(Qmax_Indx));        
    end
end
IQR = Q(3)-Q(1);
