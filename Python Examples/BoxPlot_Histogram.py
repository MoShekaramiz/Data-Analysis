import numpy as np
import matplotlib.pyplot as plt

x=[1099, 528, 2030, 1350, 1118, 1384, 1499, 1562, 409, 324, 789, 100, 522, 513, 488, 498, 215, 300, 557, 457, 2260, 461, 2500]
fig = plt.figure(1, figsize=(9, 6))

ax = fig.add_subplot(111)

bp = ax.boxplot(x)
plt.show()


counts, bins = np.histogram(x)
plt.hist(bins[:-1], bins, weights=counts)
plt.show()
# PyPlot.plt[:hist](x,normed=true)
# plt.show()
