# Differential Equations Formulas

## First-Order Differential Equations

**Linear First-Order Differential Equation:**
\\[ \frac{dy}{dx} + P(x)y = Q(x) \\]

**Solution of Linear First-Order Differential Equation:**
\\[ y(x) = e^{-\int P(x) \, dx} \left( \int Q(x) e^{\int P(x) \, dx} \, dx + C \right) \\]

**Separable Differential Equation:**
\\[ \frac{dy}{dx} = g(y)h(x) \\]

**Solution of Separable Differential Equation:**
\\[ \int \frac{1}{g(y)} \, dy = \int h(x) \, dx + C \\]

**Exact Differential Equation:**
\\[ M(x, y) \, dx + N(x, y) \, dy = 0 \\]

**Condition for Exactness:**
\\[ \frac{\partial M}{\partial y} = \frac{\partial N}{\partial x} \\]

**Integrating Factor (for non-exact equations):**
\\[ \mu(x) = e^{\int P(x) \, dx} \\]
\\[ \mu(y) = e^{\int Q(y) \, dy} \\]

## Second-Order Differential Equations

**Homogeneous Linear Second-Order Differential Equation:**
\\[ a \frac{d^2y}{dx^2} + b \frac{dy}{dx} + c y = 0 \\]

**Characteristic Equation:**
\\[ ar^2 + br + c = 0 \\]

**Solution for Distinct Real Roots (\(r_1\) and \(r_2\)):**
\\[ y(x) = C_1 e^{r_1 x} + C_2 e^{r_2 x} \\]

**Solution for Repeated Roots (\(r\)):**
\\[ y(x) = (C_1 + C_2 x)e^{rx} \\]

**Solution for Complex Roots (\(\alpha \pm \beta i\)):**
\\[ y(x) = e^{\alpha x} (C_1 \cos(\beta x) + C_2 \sin(\beta x)) \\]

**Non-Homogeneous Linear Second-Order Differential Equation:**
\\[ a \frac{d^2y}{dx^2} + b \frac{dy}{dx} + c y = f(x) \\]

**General Solution:**
\\[ y(x) = y_h(x) + y_p(x) \\]
- \(y_h(x)\) is the solution to the homogeneous equation.
- \(y_p(x)\) is a particular solution to the non-homogeneous equation.

**Method of Undetermined Coefficients:**
Assume a form for \(y_p(x)\) based on \(f(x)\) and solve for coefficients.

**Variation of Parameters:**
\\[ y_p(x) = y_1(x) \int \frac{y_2(x) f(x)}{W(y_1, y_2)} \, dx - y_2(x) \int \frac{y_1(x) f(x)}{W(y_1, y_2)} \, dx \\]
where \(y_1(x)\) and \(y_2(x)\) are solutions to the corresponding homogeneous equation and \(W(y_1, y_2)\) is the Wronskian.

## Higher-Order Differential Equations

**General Linear \(n\)th-Order Differential Equation:**
\\[ a_n \frac{d^n y}{dx^n} + a_{n-1} \frac{d^{n-1} y}{dx^{n-1}} + \cdots + a_1 \frac{dy}{dx} + a_0 y = f(x) \\]

**Solution:**
\\[ y(x) = y_h(x) + y_p(x) \\]

## Systems of Differential Equations

**First-Order Linear System:**
\\[ \mathbf{X}' = A \mathbf{X} + \mathbf{B} \\]

**Solution Using Eigenvalues and Eigenvectors:**
1. Find eigenvalues \(\lambda\) and eigenvectors \(\mathbf{v}\) of matrix \(A\).
2. General solution:
\\[ \mathbf{X}(t) = c_1 e^{\lambda_1 t} \mathbf{v}_1 + c_2 e^{\lambda_2 t} \mathbf{v}_2 + \cdots + c_n e^{\lambda_n t} \mathbf{v}_n \\]

**Phase Plane Analysis:**
- Classify critical points (nodes, saddles, spirals, centers) based on eigenvalues.

## Laplace Transforms

**Definition:**
\\[ \mathcal{L}\{f(t)\} = \int_0^\infty e^{-st} f(t) \, dt \\]

**Inverse Laplace Transform:**
\\[ \mathcal{L}^{-1}\{F(s)\} = \frac{1}{2\pi i} \int_{\gamma - i\infty}^{\gamma + i\infty} e^{st} F(s) \, ds \\]

**Properties:**
- Linearity: \\[ \mathcal{L}\{af(t) + bg(t)\} = a\mathcal{L}\{f(t)\} + b\mathcal{L}\{g(t)\} \\]
- First Derivative: \\[ \mathcal{L}\{f'(t)\} = sF(s) - f(0) \\]
- Second Derivative: \\[ \mathcal{L}\{f''(t)\} = s^2 F(s) - sf(0) - f'(0) \\]

**Laplace Transform of Common Functions:**
\\[ \mathcal{L}\{1\} = \frac{1}{s} \\]
\\[ \mathcal{L}\{t^n\} = \frac{n!}{s^{n+1}} \\]
\\[ \mathcal{L}\{e^{at}\} = \frac{1}{s-a} \\]
\\[ \mathcal{L}\{\sin(at)\} = \frac{a}{s^2 + a^2} \\]
\\[ \mathcal{L}\{\cos(at)\} = \frac{s}{s^2 + a^2} \\]

## Fourier Series

**Fourier Series Representation:**
\\[ f(x) = a_0 + \sum_{n=1}^{\infty} \left( a_n \cos \frac{n\pi x}{L} + b_n \sin \frac{n\pi x}{L} \right) \\]

**Coefficients:**
\\[ a_0 = \frac{1}{2L} \int_{-L}^{L} f(x) \, dx \\]
\\[ a_n = \frac{1}{L} \int_{-L}^{L} f(x) \cos \frac{n\pi x}{L} \, dx \\]
\\[ b_n = \frac{1}{L} \int_{-L}^{L} f(x) \sin \frac{n\pi x}{L} \, dx \\]

## Partial Differential Equations

**Heat Equation:**
\\[ \frac{\partial u}{\partial t} = \alpha \frac{\partial^2 u}{\partial x^2} \\]

**Wave Equation:**
\\[ \frac{\partial^2 u}{\partial t^2} = c^2 \frac{\partial^2 u}{\partial x^2} \\]

**Laplace's Equation:**
\\[ \frac{\partial^2 u}{\partial x^2} + \frac{\partial^2 u}{\partial y^2} = 0 \\]

**Poisson's Equation:**
\\[ \frac{\partial^2 u}{\partial x^2} + \frac{\partial^2 u}{\partial y^2} = f(x, y) \\]

## Boundary and Initial Conditions

**Initial Conditions:**
- \(y(0) = y_0\)
- \(y'(0) = y_1\)

**Boundary Conditions:**
- Dirichlet: \(u(a, t) = 0\)
- Neumann: \(\frac{\partial u}{\partial x} \bigg|_{x=a} = 0\)

**Separation of Variables:**
Assume \(u(x,t) = X(x)T(t)\) and separate the PDE into ODEs for \(X(x)\) and \(T(t)\).

