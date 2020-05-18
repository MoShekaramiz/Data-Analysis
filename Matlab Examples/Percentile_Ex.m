clc, clear;
Ex =1;
if Ex ==1
    % Ex1. 
    fprintf('Ex.1\n')
    X = [ 42 7 27 16 12 0 1]
    for P = 0.05:0.05:0.95
        Percentile = percentile(X,P);
        disp([num2str(P*100),'th_Percentile = ',num2str(Percentile)]); 
        fprintf('--------------\n')

    end
    fprintf('--------------\n')
elseif Ex==2
    % Ex2. 
    fprintf('Ex.2\n')
    X = [ 42 7 27 16 12 0 1 13]
    for P = 0.05:0.05:0.95
        Percentile = percentile(X,P);
        disp([num2str(P*100),'th_Percentile = ',num2str(Percentile)]); 
    end
end