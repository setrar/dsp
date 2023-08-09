import numpy as np
import matplotlib.pyplot as plt

n=200
x = np.linspace(0, 2*np.pi, n)

s1 = np.sin(1*x); s1=s1
s2 = np.sin(2*x)*2.5; s2=s2
s3 = np.sin(3*x)*5; s3=s3
s4 = np.sin(4*x)*7.5; s4=s4

# Create a figure with subplots
fig = plt.figure(figsize=(10, 6))

# Show the figure
plt.show()

