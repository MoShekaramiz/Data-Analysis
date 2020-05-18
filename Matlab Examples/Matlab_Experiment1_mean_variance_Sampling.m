% Chapter 1
% Examples on Mean, Variance, Simple Random Sample, and Sample of
% Convenience
% -------------------------------------------------------------------------
clc, clear; close all
% -------------------------------------------------------------------------
% All the Given Samples
% Temperature vs. days
Temp = [78,68,70,60,72,64,76,68,70,35,59,78,75,68,71,68,69,74,68,70,69,...
    76,68,66,72,65,74,65,60];
figure(1); plot(Temp, 'o-'); grid
figure(2); hist(Temp)
% Length of Samples
Length = length(Temp);
% Sample1: Using Sample of Convenience
Sample1 = Temp(1:10);
% Sample2: Using Simple Random Sample method
Sample2 = randperm(Length);
Sample2 = Temp(Sample2);
Sample2 = Sample2(1:10);
% -------------------------------------------------------------------------
% How do we do it in Python?
% Example:
% np.random.permutation(10) % Instead of randperm
% array([1, 7, 4, 3, 0, 9, 2, 5, 8, 6])
% -------------------------------------------------------------------------
% Sample3: Using Simple Random Sample method
Sample3 =randperm(Length);
Sample3 = Temp(Sample3);
Sample3 = Sample3(1:10);

Mean_Whole_Samples = mean(Temp)
Mean_SampleConvenience = mean(Sample1)
Mean_SRS2 = mean(Sample2)
Mean_SRS3 = mean(Sample3)
% -------------------------------------------------------------------------
% Computing the Variance of the whole Sample Set
% Method 1:
m = Mean_Whole_Samples
Var_Method1 = (1/(length(Temp)-1))*sum((Temp-m).^2)

% Method 2:
Var_Method2 = (1/(length(Temp)-1))*(Temp-m)'*(Temp-m)

% Method 3: 
Var_Method3 = var(Temp)

% -------------------------------------------------------------------------
% How do we do it in Python? The command is variance() intead of var
% Example: 
% # Python code to demonstrate the working of 
% # variance() function of Statistics Module 
%   
% # Importing Statistics module 
% import statistics 
%   
% # Creating a sample of data 
% sample = [2.74, 1.23, 2.63, 2.22, 3, 1.98] 
%   
% # Prints variance of the sample set 
%   
% # Function will automatically calculate 
% # it's mean and set it as xbar 
% print("Variance of sample set is % s" 
%       %(statistics.variance(sample)))
% -------------------------------------------------------------------------
% Some Extra Examples
% 
% Height = 5.5+2*rand(10,1)
% Mean_Population = mean(Height)
% Sample1 = randperm(length(Height))
% Sample1 = Height(Sample1(1:3))
% Mean_Sample_1 = mean(Sample1)
% Sample2 = randperm(length(Height))
% Sample2 = Height(Sample2(1:3))
% Mean_Sample_2 = mean(Sample2)
% Result = [Mean_Population, Mean_Sample_1, Mean_Sample_2 ]
% figure(2); hist(x)