[Verify solutions to differential equations](https://www.khanacademy.org/math/differential-equations/first-order-differential-equations/differential-equations-intro/e/introduction-to-differential-equations-and-initial-value-problems)

- [ ] 1st Example


```math

\begin{gather}
   \\
   \color{Orange} \frac{\mathit{dy}}{\mathit{dx}} = \color{White} \frac{ 5 \color{Cerulean}{y} }{x} \\
   \\
   \text{ Is } \color{Cerulean} y = -2x^5 \color{White} \text{ a solution to the above equation? }
   \\
\end{gather}

```

```math
\begin{gather}
   ^1/_4 
     \begin{cases}
      \text { In order to find whether } y = −2x^5 \text{ is a solution, }\\
      \\
      \text { we need to substitute it into the equation and see } \\
      \\
      \text { if we get equivalent expressions on each side of the equal sign. }
     \end{cases}
   \\
   \\
   ^2/_4 
     \begin{cases}
      \text{ In addition to substituting for y, we need to find the } \\
      \\
      \text{ corresponding } \frac{\mathit{dy}}{\mathit{dx}} \text{ expression to substitute into the equation: } \\
      \\
      \frac{\mathit{dy}}{\mathit{dx}} = \frac{\mathit{d}}{\mathit{dx}} \bigg[ −2x^5 \bigg] \\
      \\
      \quad = -10x^4
     \end{cases}
   \\
   \\
   ^3/_4 
     \begin{cases}
      \text{ Now we substitute } \color{Cerulean} y = -2x^5 \color{White} \text{ and } \color{Orange} \frac{\mathit{dy}}{\mathit{dx}} = -10x^4 \color{White} \text{ into the equation: }\\
      \\
      \color{Orange} \frac{\mathit{dy}}{\mathit{dx}} = \color{White} \frac{ 5 \color{Cerulean}{y} }{x} \\
      \\
      \color{Orange} -10x^4 \color{White} \stackrel\frown{ \doteq } \frac{ 5 ( \color{Cerulean} -2 x^5 \color{White} ) }{ x } \\
      \\
      -10x^4 \stackrel\frown{ \doteq } \frac{ -10 x^5 }{ x } \\
      \\
      -10x^4  {\color{Green} \check{ = }} -10x^4 \\
      \\
      \text { We obtained the same expression on each side. }
     \end{cases}
    \\
   \\
   ^4/_4 
     \begin{cases}
      \\
      \text { In conclusion, {\color{Yellow} yes},  } \color{Cerulean} y = -2x^5 \color{White} \text{ is a solution to the differential equation } \\
      \\
     \end{cases}
    \\
\end{gather}
```

- [ ] 2nd Example


```math

\begin{gather}
   \\
   {\color{Orange}  g^{\prime}(x)} = \frac{3x}{\mathit{4 {\color{Cerulean} g(x) }}} \\
   \\
   \text{ Is } {\color{Cerulean} g(x) = \frac{\sqrt{3x^2}}{2} } \text{ a solution to the above equation? }
   \\
\end{gather}

```

```math

\begin{gather}
   \\

   ^1/_4 
     \begin{cases}
      \text { In order to find whether } g(x) = \frac{\sqrt{3x^2}}{2} \text{ is a solution, }\\
      \\
      \text { we need to substitute it into the equation and see } \\
      \\
      \text { if we get equivalent expressions on each side of the equal sign. }
     \end{cases}
   \\
   \\

   ^2/_4 
     \begin{cases}
      \text{ In addition to substituting for g(x), we need to find the } \\
      \\
      \text{ corresponding } \frac{\mathit{dy}}{\mathit{dx}} \text{ expression to substitute into the equation: } \\
      \\
      g^{\prime}(x) = \frac{\mathit{d}}{\mathit{dx}} \bigg[ \frac{\sqrt{3x^2}}{2} \bigg] \\
      \\
      \quad \quad = \frac{1}{2} . \frac{1}{2\sqrt{3x^2}} . \frac{\mathit{d}}{\mathit{dx}} [ 3x^2 ] \\
      \\
      \quad \quad = \frac{1}{4\sqrt{3x^2}} . 6x \\
      \\
      \quad \quad = \frac{3x}{2\sqrt{3x^2}}
     \end{cases}
   \\
   \\
   ^3/_4 
     \begin{cases}
      \text{ Now we substitute } {\color{Cerulean} g(x) = \frac{\sqrt{3x^2}}{2} } \text{ and } {\color{Orange} g^{\prime}(x) =  \frac{3x}{2\sqrt{3x^2}} } \text{ into the equation: }\\
      \\
      {\color{Orange} g^{\prime}(x) = } \frac{3x}{\mathit{4 {\color{Cerulean} g(x) }}} \\
      \\
      {\color{Orange} \frac{3x}{2\sqrt{3x^2}} } \stackrel\frown{ \doteq } \frac{3x}{4 {\color{Cerulean} \frac{\sqrt{3x^2}}{2} }} \\
      \\
      \frac{3x}{2\sqrt{3x^2}}  {\color{Green}\check{ = }} \frac{3x}{2\sqrt{3x^2} } \\
      \\
      \text { We obtained the same expression on each side. }
     \end{cases}
    \\
    \\
   ^4/_4 
     \begin{cases}
      \\
      \text { In conclusion, {\color{Yellow} yes},  }  g(x) = \frac{\sqrt{3x^2}}{2} \text{ is a solution to the differential equation } \\
      \\
     \end{cases}
    \\

\end{gather}

```

- [ ] 3rd Example


```math

\begin{gather}
   \\
   {\color{Orange}  g^{\prime}(x)} = \frac{2x + 5 {\color{Cerulean} y }}{\mathit{ x }} \\
   \\
   \text{ Is } {\color{Cerulean} g(x) = x^5 - 2x } \text{ a solution to the above equation? }
   \\
\end{gather}

```

```math

\begin{gather}
   \\

   ^1/_4 
     \begin{cases}
      \text { In order to find whether } g(x) = x^5 - 2x  \text{ is a solution, }\\
      \\
      \text { we need to substitute it into the equation and see } \\
      \\
      \text { if we get equivalent expressions on each side of the equal sign. }
     \end{cases}
   \\
   \\

   ^2/_4 
     \begin{cases}
      \text{ In addition to substituting for g(x), we need to find the } \\
      \\
      \text{ corresponding } \frac{\mathit{dy}}{\mathit{dx}} \text{ expression to substitute into the equation: } \\
      \\
      g^{\prime}(x) = \frac{\mathit{d}}{\mathit{dx}} \bigg[  x^5 - 2x \bigg] \\
      \\
      \quad \quad = 5x^4 -2
     \end{cases}
   \\
   \\
   ^3/_4 
     \begin{cases}
      \text{ Now we substitute } {\color{Cerulean} g(x) = x^5 - 2x } \text{ and } {\color{Orange} g^{\prime}(x) =  5x^4 -2 } \text{ into the equation: }\\
      \\
      {\color{Orange} g^{\prime}(x) = } \frac{2x + 5 {\color{Cerulean} g(x) }}{\mathit{ x }} \\
      \\
      {\color{Orange} 5x^4 -2 } \stackrel\frown{ \doteq } \frac{2x + 5 ({\color{Cerulean} x^5 - 2x })}{\mathit{ x }} \\
      \\
      5x^4 - 2 \stackrel\frown{ \doteq } \frac{2x + 5x^5 - 10 x}{x} \\
      \\
      5x^4 - 2 \stackrel\frown{ \doteq } \frac{5x^5 - 8 x}{x} \\
      \\
      5x^4 - 2 \stackrel\frown{ \doteq } 5x^4 - 8 \\
      \\
      - 2 \quad { \color{Red} \neq} - 8 \\
      \\
      \text { We did not obtain equivalent expressions on each side. }
     \end{cases}
    \\
    \\
   ^4/_4 
     \begin{cases}
      \\
      \text { In conclusion, {\color{Red} no},  }  g(x) = x^5 - 2x \text{ is not a solution to the differential equation } \\
      \\
     \end{cases}
    \\

\end{gather}

```