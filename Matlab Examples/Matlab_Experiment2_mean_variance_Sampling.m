% Chapter 1
% -------------------------------------------------------------------------
clc, clear, close all
% Chapter 1
% Examples on Mean, Variance, Simple Random Sample, and Sample of
% Convenience
% -------------------------------------------------------------------------
clc, clear; close all
% -------------------------------------------------------------------------
% Example on sample mean and varaiance.
% Version 0: Mohammad Shekaramiz 9/18/2019.

% Actual pdf of the data is X\sim\Nc(\mu,\sigma^2), where \mu=1 is the mean
% and \sigma^2=1 is the varaiance
% Generating a population of size 100.
X = 1+ randn(100,1);
% Notice that X is a random variable.

M_x = mean(X)
Var_x = var(X)

% Taking 10 randdom samples from the population.
N = length(X)
Indx = randperm(N);
Indx = Indx(1:10);
X_sample10 = X(Indx);

M_sample10 = mean(X_sample10)
Var_sample10 = var(X_sample10)
Var_sample10_Eq = Var_x / 10

% Taking 30 randdom samples from the population.
Indx = randperm(N);
Indx = Indx(1:30);
X_sample30 = X(Indx);

M_sample30 = mean(X_sample30)
Var_sample30 = var(X_sample30)
Var_sample30_Eq = Var_x / 30




% Taking 80 randdom samples from the population.
Indx = randperm(N);
Indx = Indx(1:80);
X_sample80 = X(Indx);

M_sample80 = mean(X_sample80)
Var_sample80 = var(X_sample80)
Var_sample80_Eq = Var_x / 80

% See, as we incleae the numner of samples, the sample mean becomes closer
% to the actual mean and the sample variance decreases!