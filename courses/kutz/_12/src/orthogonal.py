import numpy as np
import matplotlib.pyplot as plt
import scipy.linalg
from numpy.fft import fft, fftshift, ifft

n=200
x = np.linspace(0, 2*np.pi, n)

s1 = np.sin(1*x); s1=s1
s2 = np.sin(2*x)*2.5; s2=s2
s3 = np.sin(3*x)*5; s3=s3
s4 = np.sin(4*x)*7.5; s4=s4

f = np.exp(-2*np.square(x-np.pi+1))

a1=np.dot(f,s1); f1=a1*s1
a2=np.dot(f,s2); f2=a1*s1+a2*s2
a3=np.dot(f,s3); f3=a1*s1+a2*s2+a3*s3
a4=np.dot(f,s4); f4=a1*s1+a2*s2+a3*s3+a4*s4

