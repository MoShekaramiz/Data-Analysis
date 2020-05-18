function Percentile = percentile(X,P)
% Mohammad Shekaramiz, PhD, ECE, Utah Valley University
% This code is written for the student learning purposes.
% You can modify it to make it efficient.
% -------------------------------------------------------------------------
% percentile
%
% Syntax
% Percentile = percentile(X,P)
% X : Data in a vector.
% P: The Percentile of interest in "%"
% Description 
% Calculates the percentile of interest of the data.
% Note: in Line 31, we simply perform average between the two adjacent
% ones. A better way is to perform interpolation, like what Excel does.
X_sort = sort(X);
Len_X = length(X);
Indx = (Len_X+1)*P;
if floor(Indx)==ceil(Indx)
    P_Indx = Indx;
    Percentile = X_sort(P_Indx);
else
    Floor_Indx = floor(Indx);
    if Floor_Indx==0
        Floor_Indx = Floor_Indx + 1;
    end
    Pmin_Indx = Floor_Indx;
    Pmax_Indx = ceil(Indx);
    if Pmax_Indx>Len_X
        Pmax_Indx=Len_X;
    end
    Percentile = mean([X_sort(Pmin_Indx) ,X_sort(Pmax_Indx)])            
end