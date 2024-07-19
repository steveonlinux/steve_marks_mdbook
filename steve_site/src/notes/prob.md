# Probability Theory

## Basic Concepts

**Sample Space (\(S\)):**
The set of all possible outcomes of a random experiment.
\\[ S = \{s_1, s_2, \ldots, s_n\} \\]

**Event (\(E\)):**
A subset of the sample space \(S\).
\\[ E \subseteq S \\]

**Probability of an Event (\(P(E)\)):**
\\[ P(E) = \frac{|E|}{|S|} \]
where \(|E|\) is the number of outcomes in \(E\) and \(|S|\) is the number of outcomes in \(S\).

## Axioms of Probability

1. **Non-negativity:**
   \\[ P(E) \ge 0 \\]
2. **Normalization:**
   \\[ P(S) = 1 \\]
3. **Additivity:**
   For any two mutually exclusive events \(A\) and \(B\),
   \\[ P(A \cup B) = P(A) + P(B) \\]

## Conditional Probability

**Conditional Probability (\(P(A|B)\)):**
The probability of event \(A\) given that event \(B\) has occurred.
\\[ P(A|B) = \frac{P(A \cap B)}{P(B)} \]
provided \(P(B) > 0\).

## Bayes' Theorem

**Bayes' Theorem:**
\\[ P(A|B) = \frac{P(B|A) P(A)}{P(B)} \\]

## Independent Events

**Independence:**
Two events \(A\) and \(B\) are independent if
\\[ P(A \cap B) = P(A) P(B) \\]

## Random Variables

**Random Variable (\(X\)):**
A function that assigns a numerical value to each outcome in the sample space.
\\[ X: S \to \mathbb{R} \\]

**Discrete Random Variable:**
A random variable that can take on a countable number of values.

**Continuous Random Variable:**
A random variable that can take on an uncountable number of values.

## Probability Distributions

**Probability Mass Function (PMF) for Discrete Random Variables:**
\\[ p_X(x) = P(X = x) \\]

**Probability Density Function (PDF) for Continuous Random Variables:**
\\[ f_X(x) \]
such that
\\[ P(a \le X \le b) = \int_a^b f_X(x) \, dx \\]

**Cumulative Distribution Function (CDF):**
\\[ F_X(x) = P(X \le x) \\]

## Expectation and Variance

**Expectation (Mean) of a Discrete Random Variable:**
\\[ \mathbb{E}[X] = \sum_x x p_X(x) \\]

**Expectation (Mean) of a Continuous Random Variable:**
\\[ \mathbb{E}[X] = \int_{-\infty}^{\infty} x f_X(x) \, dx \\]

**Variance:**
\\[ \text{Var}(X) = \mathbb{E}[(X - \mathbb{E}[X])^2] \\]
\\[ \text{Var}(X) = \mathbb{E}[X^2] - (\mathbb{E}[X])^2 \\]

**Standard Deviation:**
\\[ \sigma_X = \sqrt{\text{Var}(X)} \\]

## Common Discrete Distributions

**Bernoulli Distribution:**
\\[ P(X = 1) = p, \quad P(X = 0) = 1 - p \\]
\\[ \mathbb{E}[X] = p \\]
\\[ \text{Var}(X) = p(1 - p) \\]

**Binomial Distribution:**
\\[ P(X = k) = \binom{n}{k} p^k (1 - p)^{n - k} \\]
\\[ \mathbb{E}[X] = np \\]
\\[ \text{Var}(X) = np(1 - p) \\]

**Geometric Distribution:**
\\[ P(X = k) = (1 - p)^{k - 1} p \\]
\\[ \mathbb{E}[X] = \frac{1}{p} \\]
\\[ \text{Var}(X) = \frac{1 - p}{p^2} \\]

**Poisson Distribution:**
\\[ P(X = k) = \frac{\lambda^k e^{-\lambda}}{k!} \\]
\\[ \mathbb{E}[X] = \lambda \\]
\\[ \text{Var}(X) = \lambda \\]

## Common Continuous Distributions

**Uniform Distribution:**
\\[ f_X(x) = \begin{cases} \frac{1}{b - a}, & a \le x \le b \\ 0, & \text{otherwise} \end{cases} \\]
\\[ \mathbb{E}[X] = \frac{a + b}{2} \\]
\\[ \text{Var}(X) = \frac{(b - a)^2}{12} \\]

**Exponential Distribution:**
\\[ f_X(x) = \begin{cases} \lambda e^{-\lambda x}, & x \ge 0 \\ 0, & \text{otherwise} \end{cases} \\]
\\[ \mathbb{E}[X] = \frac{1}{\lambda} \\]
\\[ \text{Var}(X) = \frac{1}{\lambda^2} \\]

**Normal (Gaussian) Distribution:**
\\[ f_X(x) = \frac{1}{\sqrt{2\pi\sigma^2}} e^{-\frac{(x - \mu)^2}{2\sigma^2}} \\]
\\[ \mathbb{E}[X] = \mu \\]
\\[ \text{Var}(X) = \sigma^2 \\]

## Joint Distributions

**Joint Probability Mass Function (Discrete):**
\\[ p_{X,Y}(x, y) = P(X = x, Y = y) \\]

**Joint Probability Density Function (Continuous):**
\\[ f_{X,Y}(x, y) \\]

**Marginal Distribution:**
\\[ p_X(x) = \sum_y p_{X,Y}(x, y) \\]
\\[ f_X(x) = \int_{-\infty}^{\infty} f_{X,Y}(x, y) \, dy \\]

## Conditional Distributions

**Conditional PMF:**
\\[ p_{X|Y}(x|y) = \frac{p_{X,Y}(x, y)}{p_Y(y)} \\]

**Conditional PDF:**
\\[ f_{X|Y}(x|y) = \frac{f_{X,Y}(x, y)}{f_Y(y)} \\]

## Covariance and Correlation

**Covariance:**
\\[ \text{Cov}(X, Y) = \mathbb{E}[(X - \mathbb{E}[X])(Y - \mathbb{E}[Y])] \\]
\\[ \text{Cov}(X, Y) = \mathbb{E}[XY] - \mathbb{E}[X]\mathbb{E}[Y] \\]

**Correlation Coefficient:**
\\[ \rho_{X,Y} = \frac{\text{Cov}(X, Y)}{\sigma_X \sigma_Y} \\]

**Properties:**
- \( \text{Cov}(X, Y) = 0 \) implies \( X \) and \( Y \) are uncorrelated.
- \( \rho_{X,Y} \) ranges from \(-1\) to \(1\).

## Moment Generating Functions

**Moment Generating Function (MGF):**
\\[ M_X(t) = \mathbb{E}[e^{tX}] \\]

**Properties:**
- The \( n \)-th moment of \( X \) is \( M_X^{(n)}(0) \).
- If \( M_X(t) = M_Y(t) \), then \( X \) and \( Y \) have the same distribution.

## Law of Large Numbers

**Weak Law of Large Numbers:**
\\[ \overline{X}_n = \frac{1}{n} \sum_{i=1}^n X_i \to \mathbb{E}[X] \quad \text{in probability as} \quad n \to \infty \\]

**Strong Law of Large Numbers:**
\\[ \overline{X}_n = \frac{1}{n} \sum_{i=1}^n X_i \to \mathbb{E}[X] \quad \text{almost surely as} \quad n \to \infty \\]

## Central Limit Theorem

**Central Limit Theorem:**
If \( X_1, X_2, \ldots, X_n \) are i.i.d. random variables with mean \( \mu \) and variance \( \sigma^2 \), then
\\[ \frac{\overline{X}_n - \mu}{\sigma / \sqrt{n}} \to N(0, 1) \quad \text{as} \quad n \to \infty \\]

## Markov and Chebyshev Inequalities

**Markov's Inequality:**
For a non-negative random variable \( X \) and \( a > 0 \),
\\[ P(X \ge a) \le \frac{\mathbb{E}[X]}{a} \\]

**Chebyshev's Inequality:**
For any random variable \( X \) with mean \( \mu \) and variance \( \sigma^2 \),
\\[ P(|X - \mu| \ge k\sigma) \le \frac{1}{k^2} \\]

## Information Theory

**Entropy (Discrete):**
\\[ H(X) = -\sum_{x} p(x) \log p(x) \\]

**Joint Entropy:**
\\[ H(X, Y) = -\sum_{x,y} p(x, y) \log p(x, y) \\]

**Conditional Entropy:**
\\[ H(X|Y) = -\sum_{x,y} p(x, y) \log p(x|y) \\]

**Mutual Information:**
\\[ I(X;Y) = H(X) + H(Y) - H(X, Y) \\]
\\[ I(X;Y) = \sum_{x,y} p(x, y) \log \left( \frac{p(x, y)}{p(x) p(y)} \right) \\]

**Kullback-Leibler Divergence:**
\\[ D_{KL}(P || Q) = \sum_{x} p(x) \log \left( \frac{p(x)}{q(x)} \right) \\]

## Common Transformations

**Linear Transformation:**
If \( Y = aX + b \), then
\\[ \mathbb{E}[Y] = a\mathbb{E}[X] + b \\]
\\[ \text{Var}(Y) = a^2 \text{Var}(X) \\]

**Sum of Independent Random Variables:**
If \( X \) and \( Y \) are independent, then
\\[ \mathbb{E}[X + Y] = \mathbb{E}[X] + \mathbb{E}[Y] \\]
\\[ \text{Var}(X + Y) = \text{Var}(X) + \text{Var}(Y) \\]

**Convolution of Two Independent Random Variables:**
The PDF of the sum \( Z = X + Y \) is given by
\\[ f_Z(z) = \int_{-\infty}^{\infty} f_X(x) f_Y(z - x) \, dx \\]

## Important Results

**Law of Total Probability:**
\\[ P(A) = \sum_{i} P(A|B_i) P(B_i) \\]
where \( \{B_i\} \) is a partition of the sample space.

**Bayes' Theorem (General Form):**
\\[ P(B_i|A) = \frac{P(A|B_i) P(B_i)}{\sum_{j} P(A|B_j) P(B_j)} \\]

**Poisson Process:**
A counting process with rate \( \lambda \) has:
- Interarrival times \( T_i \) that are i.i.d. exponential with parameter \( \lambda \).
- Number of events in time \( t \) is Poisson distributed with parameter \( \lambda t \).

**Moment Generating Function (MGF):**
If \( X \) has an MGF \( M_X(t) \), then the \( n \)-th moment is
\\[ \mathbb{E}[X^n] = M_X^{(n)}(0) \\]

**Characteristic Function:**
The characteristic function of \( X \) is
\\[ \phi_X(t) = \mathbb{E}[e^{itX}] \\]
and it uniquely determines the distribution of \( X \).

## Stochastic Processes

**Definition:**
A stochastic process is a collection of random variables \( \{X(t) : t \in T\} \) indexed by \( T \).

**Markov Process:**
A stochastic process where the future is independent of the past given the present.

**Martingale:**
A stochastic process \( \{X_t\} \) is a martingale if
\\[ \mathbb{E}[X_{t+1} | \mathcal{F}_t] = X_t \\]

**Brownian Motion:**
A continuous-time stochastic process \( \{B(t) : t \ge 0\} \) with:
1. \( B(0) = 0 \).
2. Independent increments.
3. \( B(t) - B(s) \sim N(0, t-s) \) for \( 0 \le s < t \).
4. Continuous paths.

## Central Limit Theorem (CLT) for IID Random Variables

**CLT Statement:**
If \( X_1, X_2, \ldots, X_n \) are i.i.d. random variables with mean \( \mu \) and variance \( \sigma^2 \), then
\\[ \frac{\overline{X}_n - \mu}{\sigma / \sqrt{n}} \to N(0, 1) \quad \text{as} \quad n \to \infty \\]

**Multivariate Central Limit Theorem:**
If \( \mathbf{X}_1, \mathbf{X}_2, \ldots, \mathbf{X}_n \) are i.i.d. random vectors with mean vector \( \mathbf{\mu} \) and covariance matrix \( \Sigma \), then
\\[ \sqrt{n}(\overline{\mathbf{X}}_n - \mathbf{\mu}) \to N(\mathbf{0}, \Sigma) \quad \text{as} \quad n \to \infty \\]

## Law of Large Numbers (LLN)

**Weak Law of Large Numbers (WLLN):**
For i.i.d. random variables \( X_1, X_2, \ldots, X_n \) with mean \( \mu \),
\\[ \overline{X}_n = \frac{1}{n} \sum_{i=1}^n X_i \to \mu \quad \text{in probability as} \quad n \to \infty \\]

**Strong Law of Large Numbers (SLLN):**
For i.i.d. random variables \( X_1, X_2, \ldots, X_n \) with mean \( \mu \),
\\[ \overline{X}_n = \frac{1}{n} \sum_{i=1}^n X_i \to \mu \quad \text{almost surely as} \quad n \to \infty \\]

## Convergence in Probability and Distribution

**Convergence in Probability:**
A sequence of random variables \( X_n \) converges in probability to \( X \) if for all \( \epsilon > 0 \),
\\[ \lim_{n \to \infty} P(|X_n - X| \ge \epsilon) = 0 \\]

**Convergence in Distribution:**
A sequence of random variables \( X_n \) converges in distribution to \( X \) if for all continuity points \( x \) of \( F_X(x) \),
\\[ \lim_{n \to \infty} F_{X_n}(x) = F_X(x) \\]

## Moment Generating Functions (MGF) and Characteristic Functions

**MGF of Sum of Independent Random Variables:**
If \( X \) and \( Y \) are independent,
\\[ M_{X+Y}(t) = M_X(t) M_Y(t) \\]

**Characteristic Function of Sum of Independent Random Variables:**
If \( X \) and \( Y \) are independent,
\\[ \phi_{X+Y}(t) = \phi_X(t) \phi_Y(t) \\]

## Inequalities and Bounds

**Jensen's Inequality:**
For a convex function \( \phi \) and random variable \( X \),
\\[ \phi(\mathbb{E}[X]) \le \mathbb{E}[\phi(X)] \\]

**Cauchy-Schwarz Inequality:**
For any random variables \( X \) and \( Y \),
\\[ (\mathbb{E}[XY])^2 \le \mathbb{E}[X^2] \mathbb{E}[Y^2] \\]

**Markov's Inequality:**
For a non-negative random variable \( X \) and \( a > 0 \),
\\[ P(X \ge a) \le \frac{\mathbb{E}[X]}{a} \\]

**Chebyshev's Inequality:**
For any random variable \( X \) with mean \( \mu \) and variance \( \sigma^2 \),
\\[ P(|X - \mu| \ge k\sigma) \le \frac{1}{k^2} \\]

## Bayesian Inference

**Posterior Distribution:**
\\[ P(\theta|X) = \frac{P(X|\theta) P(\theta)}{P(X)} \\]

**Maximum A Posteriori (MAP) Estimate:**
\\[ \hat{\theta}_{MAP} = \arg\max_\theta P(\theta|X) \\]

**Bayesian Updating:**
Given a prior \( P(\theta) \) and likelihood \( P(X|\theta) \), the posterior is updated as
\\[ P(\theta|X) \propto P(X|\theta) P(\theta) \\]

## Hypothesis Testing

**Null Hypothesis (\(H_0\)):**
The hypothesis that there is no effect or no difference.

**Alternative Hypothesis (\(H_1\)):**
The hypothesis that there is an effect or a difference.

**Test Statistic:**
A function of the sample data used to decide whether to reject \(H_0\).

**p-Value:**
The probability of obtaining a test statistic at least as extreme as the one observed, assuming \(H_0\) is true.

**Type I Error:**
Rejecting \(H_0\) when it is true (false positive).

**Type II Error:**
Failing to reject \(H_0\) when it is false (false negative).

**Significance Level (\(\alpha\)):**
The probability of making a Type I error.

**Power:**
The probability of correctly rejecting \(H_0\) (1 - probability of Type II error).

## Confidence Intervals

**Confidence Interval for Mean (\(\mu\)):**
For a normal distribution with known variance \( \sigma^2 \),
\\[ \left( \overline{X} - z_{\alpha/2} \frac{\sigma}{\sqrt{n}}, \overline{X} + z_{\alpha/2} \frac{\sigma}{\sqrt{n}} \right) \\]
where \( z_{\alpha/2} \) is the critical value from the standard normal distribution.

**Confidence Interval for Proportion (\(p\)):**
\\[ \left( \hat{p} - z_{\alpha/2} \sqrt{\frac{\hat{p}(1 - \hat{p})}{n}}, \hat{p} + z_{\alpha/2} \sqrt{\frac{\hat{p}(1 - \hat{p})}{n}} \right) \\]
where \( \hat{p} \) is the sample proportion.

## Regression Analysis

**Simple Linear Regression:**
\\[ Y = \beta_0 + \beta_1 X + \epsilon \\]

**Least Squares Estimates:**
\\[ \hat{\beta}_1 = \frac{\sum (X_i - \overline{X})(Y_i - \overline{Y})}{\sum (X_i - \overline{X})^2} \\]
\\[ \hat{\beta}_0 = \overline{Y} - \hat{\beta}_1 \overline{X} \\]

**Coefficient of Determination (\(R^2\)):**
\\[ R^2 = \frac{\sum (\hat{Y}_i - \overline{Y})^2}{\sum (Y_i - \overline{Y})^2} \\]

**Multiple Linear Regression:**
\\[ Y = \beta_0 + \beta_1 X_1 + \beta_2 X_2 + \cdots + \beta_p X_p + \epsilon \\]

**Generalized Least Squares Estimates:**
\\[ \hat{\beta} = (X^T X)^{-1} X^T Y \\]

## Common Probability Distributions

**Bernoulli Distribution:**
\\[ P(X = 1) = p, \quad P(X = 0) = 1 - p \\]
\\[ \mathbb{E}[X] = p \\]
\\[ \text{Var}(X) = p(1 - p) \\]

**Binomial Distribution:**
\\[ P(X = k) = \binom{n}{k} p^k (1 - p)^{n - k} \\]
\\[ \mathbb{E}[X] = np \\]
\\[ \text{Var}(X) = np(1 - p) \\]

**Geometric Distribution:**
\\[ P(X = k) = (1 - p)^{k - 1} p \\]
\\[ \mathbb{E}[X] = \frac{1}{p} \\]
\\[ \text{Var}(X) = \frac{1 - p}{p^2} \\]

**Poisson Distribution:**
\\[ P(X = k) = \frac{\lambda^k e^{-\lambda}}{k!} \\]
\\[ \mathbb{E}[X] = \lambda \\]
\\[ \text{Var}(X) = \lambda \\]

**Uniform Distribution:**
\\[ f_X(x) = \begin{cases} \frac{1}{b - a}, & a \le x \le b \\ 0, & \text{otherwise} \end{cases} \\]
\\[ \mathbb{E}[X] = \frac{a + b}{2} \\]
\\[ \text{Var}(X) = \frac{(b - a)^2}{12} \\]

**Exponential Distribution:**
\\[ f_X(x) = \begin{cases} \lambda e^{-\lambda x}, & x \ge 0 \\ 0, & \text{otherwise} \end{cases} \\]
\\[ \mathbb{E}[X] = \frac{1}{\lambda} \\]
\\[ \text{Var}(X) = \frac{1}{\lambda^2} \\]

**Normal (Gaussian) Distribution:**
\\[ f_X(x) = \frac{1}{\sqrt{2\pi\sigma^2}} e^{-\frac{(x - \mu)^2}{2\sigma^2}} \\]
\\[ \mathbb{E}[X] = \mu \\]
\\[ \text{Var}(X) = \sigma^2 \\]

**Gamma Distribution:**
\\[ f_X(x) = \frac{\lambda^k x^{k-1} e^{-\lambda x}}{\Gamma(k)}, \quad x \ge 0 \\]
\\[ \mathbb{E}[X] = \frac{k}{\lambda} \\]
\\[ \text{Var}(X) = \frac{k}{\lambda^2} \\]

**Beta Distribution:**
\\[ f_X(x) = \frac{x^{\alpha-1} (1 - x)^{\beta-1}}{B(\alpha, \beta)}, \quad 0 \le x \le 1 \\]
\\[ \mathbb{E}[X] = \frac{\alpha}{\alpha + \beta} \\]
\\[ \text{Var}(X) = \frac{\alpha\beta}{(\alpha + \beta)^2 (\alpha + \beta + 1)} \\]

**Chi-Square Distribution:**
\\[ f_X(x) = \frac{1}{2^{k/2} \Gamma(k/2)} x^{k/2 - 1} e^{-x/2}, \quad x \ge 0 \\]
\\[ \mathbb{E}[X] = k \\]
\\[ \text{Var}(X) = 2k \\]

**Student's t-Distribution:**
\\[ f_X(x) = \frac{\Gamma\left(\frac{\nu+1}{2}\right)}{\sqrt{\nu \pi} \Gamma\left(\frac{\nu}{2}\right)} \left(1 + \frac{x^2}{\nu}\right)^{-(\nu+1)/2} \\]
\\[ \mathbb{E}[X] = 0 \quad \text{for} \quad \nu > 1 \\]
\\[ \text{Var}(X) = \frac{\nu}{\nu-2} \quad \text{for} \quad \nu > 2 \\]

**Multivariate Normal Distribution:**
\\[ f_X(\mathbf{x}) = \frac{1}{(2\pi)^{k/2} |\Sigma|^{1/2}} \exp \left( -\frac{1}{2} (\mathbf{x} - \mathbf{\mu})^T \Sigma^{-1} (\mathbf{x} - \mathbf{\mu}) \right) \\]
where \( \mathbf{\mu} \) is the mean vector and \( \Sigma \) is the covariance matrix.

**Multinomial Distribution:**
\\[ P(X_1 = x_1, X_2 = x_2, \ldots, X_k = x_k) = \frac{n!}{x_1! x_2! \cdots x_k!} p_1^{x_1} p_2^{x_2} \cdots p_k^{x_k} \\]
where \( X_i \) is the count of the \(i\)-th outcome in \(n\) trials, and \( p_i \) is the probability of the \(i\)-th outcome.

**Negative Binomial Distribution:**
\\[ P(X = k) = \binom{k+r-1}{r-1} p^r (1 - p)^k \\]
\\[ \mathbb{E}[X] = \frac{r(1 - p)}{p} \\]
\\[ \text{Var}(X) = \frac{r(1 - p)}{p^2} \\]

**Hypergeometric Distribution:**
\\[ P(X = k) = \frac{\binom{K}{k} \binom{N-K}{n-k}}{\binom{N}{n}} \\]
where \( X \) is the number of successes in \(n\) draws from a population of \(N\) with \(K\) successes.


