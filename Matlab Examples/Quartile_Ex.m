clc, clear;
% Ex1. 
fprintf('Ex.1\n')
X = [ 42 7 27 16 12 0 1]
[Q,IQR] = quartile(X)
fprintf('--------------\n')
% Ex2. 
fprintf('Ex.2\n')
X = [ 42 7 27 16 12 0 1 13]
[Q,IQR] = quartile(X)