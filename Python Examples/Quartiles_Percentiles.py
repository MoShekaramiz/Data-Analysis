import numpy as np
# Example 1:
X= [42,7,27,16,12,0,1]
# Example 2:
# X = [1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 , 10 , 11]
# X.sort()
Q1=np.percentile(X,25)
Q2=np.percentile(X,50)
Q3=np.percentile(X,75)
print("Q1=",Q1)
print("Q2=",Q2)
print("Q3=",Q3)


P25=np.percentile(X,25)
P50=np.percentile(X,50)
P75=np.percentile(X,75)
# More Examples
P10=np.percentile(X,10)
P80=np.percentile(X,80)
P66=np.percentile(X,66)

print("P25=",P25)
print("P50=",P50)
print("P75=",P75)
print("P10=",P10)
print("P80=",P80)
print("P66=",P66)
