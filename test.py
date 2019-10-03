import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

p = [[], [], []]

with open('/Users/yanyucheng/OneDrive/codeProjects/3Dreconstruction/out_pcl/obj1.txt') as f:
    lines = f.readlines()
    for line in lines:
        l_num = line.strip().split(',')
        p[0].append(int(l_num[0]))
        p[1].append(int(l_num[1]))
        p[2].append(int(l_num[2]))

fig = plt.figure(dpi=120)
ax = fig.add_subplot(111, projection='3d')
plt.title('point cloud')
ax.scatter(p[0], p[1], p[2], c='b', marker='.', s=2, linewidth=0, alpha=1, cmap='spectral')
# ax.axis('scaled')
ax.set_xlabel('X Label')
ax.set_ylabel('Y Label')
ax.set_zlabel('Z Label')
plt.show()
