# Single Variable Calculus

## Limits and Continuity

**Definition of a Limit:**
\\[ \lim_{x \to c} f(x) = L \\]

**One-Sided Limits:**
\\[ \lim_{x \to c^+} f(x) = L \\]
\\[ \lim_{x \to c^-} f(x) = L \\]

**Limit Laws:**
\\[ \lim_{x \to c} [f(x) + g(x)] = \lim_{x \to c} f(x) + \lim_{x \to c} g(x) \\]
\\[ \lim_{x \to c} [f(x) - g(x)] = \lim_{x \to c} f(x) - \lim_{x \to c} g(x) \\]
\\[ \lim_{x \to c} [f(x) \cdot g(x)] = \lim_{x \to c} f(x) \cdot \lim_{x \to c} g(x) \\]
\\[ \lim_{x \to c} \left[ \frac{f(x)}{g(x)} \right] = \frac{\lim_{x \to c} f(x)}{\lim_{x \to c} g(x)} \\]

**Continuity:**
A function \( f(x) \) is continuous at \( x = c \) if:
1. \( f(c) \) is defined.
2. \( \lim_{x \to c} f(x) \) exists.
3. \( \lim_{x \to c} f(x) = f(c) \).

## Derivatives

**Definition of the Derivative:**
\\[ f'(x) = \lim_{h \to 0} \frac{f(x+h) - f(x)}{h} \\]

**Power Rule:**
\\[ \frac{d}{dx} [x^n] = nx^{n-1} \\]

**Product Rule:**
\\[ \frac{d}{dx} [uv] = u'v + uv' \\]

**Quotient Rule:**
\\[ \frac{d}{dx} \left[ \frac{u}{v} \right] = \frac{u'v - uv'}{v^2} \\]

**Chain Rule:**
\\[ \frac{d}{dx} f(g(x)) = f'(g(x)) g'(x) \\]

**Higher-Order Derivatives:**
\\[ f''(x) = \frac{d^2 f}{dx^2} \\]

## Applications of Derivatives

**Critical Points:**
Points where \( f'(x) = 0 \) or \( f'(x) \) does not exist.

**Increasing/Decreasing Test:**
- If \( f'(x) > 0 \) on an interval, \( f(x) \) is increasing on that interval.
- If \( f'(x) < 0 \) on an interval, \( f(x) \) is decreasing on that interval.

**First Derivative Test:**
- If \( f' \) changes from positive to negative at \( c \), \( f(c) \) is a local maximum.
- If \( f' \) changes from negative to positive at \( c \), \( f(c) \) is a local minimum.

**Concavity and Inflection Points:**
- \( f''(x) > 0 \) on an interval, \( f \) is concave up on that interval.
- \( f''(x) < 0 \) on an interval, \( f \) is concave down on that interval.
- Inflection points occur where \( f''(x) = 0 \) and changes sign.

**Second Derivative Test:**
- If \( f''(c) > 0 \), \( f(c) \) is a local minimum.
- If \( f''(c) < 0 \), \( f(c) \) is a local maximum.

**Optimization:**
Use derivatives to find the maximum and minimum values of a function in a given interval.

**Related Rates:**
Use derivatives to relate the rates of change of two or more related variables.

## Integrals

**Indefinite Integral (Antiderivative):**
\\[ \int f(x) \, dx = F(x) + C \\]
where \( F'(x) = f(x) \) and \( C \) is the constant of integration.

**Basic Integration Rules:**
\\[ \int x^n \, dx = \frac{x^{n+1}}{n+1} + C \]
\\[ \int e^x \, dx = e^x + C \\]
\\[ \int \sin x \, dx = -\cos x + C \\]
\\[ \int \cos x \, dx = \sin x + C \\]

**Definite Integral:**
\\[ \int_a^b f(x) \, dx \\]
represents the area under the curve \( f(x) \) from \( x = a \) to \( x = b \).

**Fundamental Theorem of Calculus:**
1. \\[ F(x) = \int_a^x f(t) \, dt \implies F'(x) = f(x) \\]
2. \\[ \int_a^b f(x) \, dx = F(b) - F(a) \\]
where \( F \) is an antiderivative of \( f \).

**Integration by Substitution:**
\\[ \int f(g(x))g'(x) \, dx = \int f(u) \, du \\]
where \( u = g(x) \).

**Integration by Parts:**
\\[ \int u \, dv = uv - \int v \, du \\]

## Applications of Integrals

**Area Between Curves:**
\\[ \int_a^b [f(x) - g(x)] \, dx \\]
where \( f(x) \) is the upper function and \( g(x) \) is the lower function.

**Volume of Solids of Revolution (Disk Method):**
\\[ V = \pi \int_a^b [f(x)]^2 \, dx \\]

**Volume of Solids of Revolution (Washer Method):**
\\[ V = \pi \int_a^b \left[ [R(x)]^2 - [r(x)]^2 \right] \, dx \\]

**Arc Length:**
\\[ L = \int_a^b \sqrt{1 + [f'(x)]^2} \, dx \\]

**Surface Area:**
\\[ SA = 2\pi \int_a^b f(x) \sqrt{1 + [f'(x)]^2} \, dx \\]

# Calculus 2 Formulas

## Techniques of Integration

**Integration by Partial Fractions:**
For a rational function \( \frac{P(x)}{Q(x)} \), decompose into partial fractions before integrating.

**Trigonometric Integrals:**
\\[ \int \sin^m x \cos^n x \, dx \\]
Use reduction formulas or trigonometric identities.

**Trigonometric Substitution:**
Use substitutions like \( x = a \sin \theta \), \( x = a \tan \theta \), or \( x = a \sec \theta \) to simplify integrals.

**Improper Integrals:**
\\[ \int_a^\infty f(x) \, dx = \lim_{b \to \infty} \int_a^b f(x) \, dx \\]
\\[ \int_{-\infty}^\infty f(x) \, dx = \lim_{a \to -\infty} \lim_{b \to \infty} \int_a^b f(x) \, dx \\]

## Series

**Sequences:**
A sequence is an ordered list of numbers defined by a formula \( a_n \).

**Series:**
A series is the sum of the terms of a sequence.
\\[ \sum_{n=1}^\infty a_n \\]

**Geometric Series:**
\\[ \sum_{n=0}^\infty ar^n = \frac{a}{1-r} \quad \text{for} \quad |r| < 1 \\]

**Convergence Tests:**
- **Integral Test:**
  \\[ \sum_{n=1}^\infty a_n \quad \text{and} \quad \int_1^\infty f(x) \, dx \quad \text{either both converge or both diverge} \\]
- **Comparison Test:**
  If \( 0 \le a_n \le b_n \) and \( \sum b_n \) converges, then \( \sum a_n \) converges.
- **Ratio Test:**
  \\[ \lim_{n \to \infty} \left| \frac{a_{n+1}}{a_n} \right| = L \]
  - If \( L < 1 \), the series converges.
  - If \( L > 1 \), the series diverges.
  - If \( L = 1 \), the test is inconclusive.
- **Root Test:**
  \\[ \lim_{n \to \infty} \sqrt[n]{|a_n|} = L \]
  - If \( L < 1 \), the series converges.
  - If \( L > 1 \), the series diverges.
  - If \( L = 1 \), the test is inconclusive.

**Power Series:**
\\[ \sum_{n=0}^\infty c_n (x - a)^n \\]
with radius of convergence \( R \).

**Taylor Series:**
\\[ f(x) = \sum_{n=0}^\infty \frac{f^n(a)}{n!} (x - a)^n \\]

**Maclaurin Series:**
\\[ f(x) = \sum_{n=0}^\infty \frac{f^n(0)}{n!} x^n \\]

## Parametric Equations and Polar Coordinates

**Parametric Equations:**
- A curve is defined by \( x = f(t) \) and \( y = g(t) \).

**Slope of a Parametric Curve:**
\\[ \frac{dy}{dx} = \frac{\frac{dy}{dt}}{\frac{dx}{dt}} \\]

**Arc Length of a Parametric Curve:**
\\[ L = \int_a^b \sqrt{\left( \frac{dx}{dt} \right)^2 + \left( \frac{dy}{dt} \right)^2} \, dt \\]

**Polar Coordinates:**
- Points are defined by \( (r, \theta) \).

**Converting Polar to Cartesian:**
\\[ x = r \cos \theta \\]
\\[ y = r \sin \theta \\]

**Converting Cartesian to Polar:**
\\[ r = \sqrt{x^2 + y^2} \\]
\\[ \theta = \tan^{-1} \left( \frac{y}{x} \right) \\]

**Area in Polar Coordinates:**
\\[ A = \frac{1}{2} \int_{\alpha}^{\beta} r^2 \, d\theta \\]

**Arc Length in Polar Coordinates:**
\\[ L = \int_{\alpha}^{\beta} \sqrt{\left( \frac{dr}{d\theta} \right)^2 + r^2} \, d\theta \\]

## Differential Equations

**Separable Differential Equations:**
\\[ \frac{dy}{dx} = g(x)h(y) \\]
Separate and integrate:
\\[ \int \frac{1}{h(y)} \, dy = \int g(x) \, dx \\]

**Linear First-Order Differential Equations:**
\\[ \frac{dy}{dx} + P(x)y = Q(x) \\]
Solve using the integrating factor:
\\[ \mu(x) = e^{\int P(x) \, dx} \\]

**General Solution:**
\\[ y(x) = \frac{1}{\mu(x)} \left( \int \mu(x) Q(x) \, dx + C \right) \\]

## Applications of Differential Equations

**Exponential Growth and Decay:**
\\[ \frac{dy}{dt} = ky \\]
Solution:
\\[ y(t) = y_0 e^{kt} \\]

**Newton's Law of Cooling:**
\\[ \frac{dT}{dt} = k(T - T_{\text{env}}) \\]
Solution:
\\[ T(t) = T_{\text{env}} + (T_0 - T_{\text{env}}) e^{kt} \\]

**Logistic Growth:**
\\[ \frac{dP}{dt} = rP \left( 1 - \frac{P}{K} \right) \\]
Solution:
\\[ P(t) = \frac{KP_0 e^{rt}}{K + P_0 (e^{rt} - 1)} \\]

