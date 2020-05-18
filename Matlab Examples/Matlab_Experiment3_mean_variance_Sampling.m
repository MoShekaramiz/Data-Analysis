clc, clear, close all
% ECE 3710
% Example on sample mean, sample varaiance, and sampling methods
% Version 0: Dr. Mohammad Shekaramiz 1/14/2020.

% Actual pdf of the data is X\sim\Nc(\mu,\sigma^2), where \mu=1 is the mean
% and \sigma^2=1 is the varaiance
% Generating a population of size 100.
mu = 0;
std = 1;
N = 100; % Number of samples
X = mu + std * randn(100,1);
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

% Taking 30 random samples from the population.
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