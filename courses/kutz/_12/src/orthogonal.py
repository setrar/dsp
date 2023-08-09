import numpy as np
import matplotlib.pyplot as plt

n=200
x = np.linspace(0, 2*np.pi, n)

f = np.exp(-2*np.square(x-np.pi+1))

# Create a figure with subplots
fig = plt.figure(figsize=(10, 6))

approx=0*x
for k in range(9):
    ax = fig.add_subplot(4, 3, k+1)
    s=np.sin((k+1)*x/2); s=s/np.sqrt(np.dot(s,s))
    a=np.dot(f,s)
    approx=approx+a*s
    plt.plot(x,f,x,approx)

# Show the figure
plt.show()
