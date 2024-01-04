

The Discrete-Time Fourier Transform (DTFT) is defined for signals that are absolutely summable. In other words, if $x[n]$ is a discrete-time signal, its DTFT $X(e^{j\omega})$ exists if the sum $\sum_{n=-\infty}^{\infty} |x[n]|$ is finite.

Signals that do not have a finite sum of absolute values, i.e., signals for which the sum diverges, do not have a well-defined DTFT. Such signals are not absolutely summable, and the DTFT integral does not converge.

Here are some examples of signals that do not have a DTFT:

1. **Unit Step Function (u[n]):**
   $ u[n] = \begin{cases} 
   1 & \text{if } n \geq 0 \\
   0 & \text{if } n < 0 
   \end{cases} $
   The sum of the absolute values of this signal ($\sum_{n=-\infty}^{\infty} |u[n]|$) is infinite, and therefore, the DTFT does not exist.

2. **Exponential Growth (e.g., $x[n] = a^n$ where $|a| \geq 1$):**
   For signals that grow exponentially, the sum of absolute values does not converge, leading to a non-existent DTFT.

3. **Sine or Cosine Function with Infinite Duration:**
   Signals like $x[n] = \cos(\omega_0 n)$ or $x[n] = \sin(\omega_0 n)$ with infinite duration do not have a finite sum of absolute values, and their DTFT is not defined.

It's important to note that many commonly used signals, such as finite-duration signals and those with bounded amplitudes, do have a well-defined DTFT. The DTFT is a powerful tool for analyzing the frequency content of discrete-time signals under appropriate conditions.
