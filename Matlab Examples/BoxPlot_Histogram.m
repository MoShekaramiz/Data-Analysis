
% BOXPLOT and Histogram
clc, clear; close all


x=[1099 528 2030 1350 1118 1384 1499 1562 409 324 789 100 522 513 488 498 215 300 557 457 2260 461 2500]

figure(1); boxplot(x); title('boxplot')
figure(2); hist(x); title('Histogram')