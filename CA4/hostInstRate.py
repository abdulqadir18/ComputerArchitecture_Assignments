import matplotlib.pyplot as plt

fig = plt.figure()
ax = fig.add_subplot(1, 1, 1)
ax.plot([199303,208580,210821,216205,217390], [32,64,128,256,512])
ax.set_xlabel('hostInstRate')
ax.set_ylabel('L1 cache')

plt.show()