

---

Matrix

```math
A_{m,n} = 
 \begin{pmatrix}
  a_{1,1} & a_{1,2} & \cdots & a_{1,n} \\
  a_{2,1} & a_{2,2} & \cdots & a_{2,n} \\
  \vdots  & \vdots  & \ddots & \vdots  \\
  a_{m,1} & a_{m,2} & \cdots & a_{m,n} 
 \end{pmatrix}
```


---

Recursive function

```math
f(n + 1) =
  \begin{cases}
    1       & \quad \text{if } f(0) \text{ and } f(1) \\
    f(n) + f(n -1)  & \quad \text{if } n \text{ others }
  \end{cases}
```
