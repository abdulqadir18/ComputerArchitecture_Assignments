import matplotlib.pyplot as plt

fig = plt.figure()
ax = fig.add_subplot(1, 1, 1)
ax.plot([0.000485,0.000482,0.000481,0.000478,0.000477], [32,64,128,256,512])
ax.set_xlabel('simSec')
ax.set_ylabel('L1 cache')

plt.show()