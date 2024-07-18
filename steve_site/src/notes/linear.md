# Linear Algebra Formulas

## Vectors and Vector Spaces

**Vector Definition:**
\\[ \mathbf{v} = \begin{pmatrix} v_1 \\ v_2 \\ \vdots \\ v_n \end{pmatrix} \\]

**Vector Addition:**
\\[ \mathbf{u} + \mathbf{v} = \begin{pmatrix} u_1 \\ u_2 \\ \vdots \\ u_n \end{pmatrix} + \begin{pmatrix} v_1 \\ v_2 \\ \vdots \\ v_n \end{pmatrix} = \begin{pmatrix} u_1 + v_1 \\ u_2 + v_2 \\ \vdots \\ u_n + v_n \end{pmatrix} \\]

**Scalar Multiplication:**
\\[ c \mathbf{v} = c \begin{pmatrix} v_1 \\ v_2 \\ \vdots \\ v_n \end{pmatrix} = \begin{pmatrix} c v_1 \\ c v_2 \\ \vdots \\ c v_n \end{pmatrix} \\]

**Dot Product:**
\\[ \mathbf{u} \cdot \mathbf{v} = u_1 v_1 + u_2 v_2 + \cdots + u_n v_n \\]
\\[ \mathbf{u} \cdot \mathbf{v} = \|\mathbf{u}\| \|\mathbf{v}\| \cos \theta \\]

**Cross Product (in \( \mathbb{R}^3 \)):**
\\[ \mathbf{u} \times \mathbf{v} = \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\\\ u_1 & u_2 & u_3 \\\\ v_1 & v_2 & v_3 \end{vmatrix} \\]
\\[ \|\mathbf{u} \times \mathbf{v}\| = \|\mathbf{u}\| \|\mathbf{v}\| \sin \theta \\]

**Vector Space Axioms:**
1. Closure under addition
2. Closure under scalar multiplication
3. Associativity of addition
4. Commutativity of addition
5. Existence of additive identity
6. Existence of additive inverse
7. Distributivity of scalar multiplication over vector addition
8. Distributivity of scalar multiplication over field addition
9. Compatibility of scalar multiplication with field multiplication
10. Existence of multiplicative identity

**Subspace:**
A subset \(W\) of a vector space \(V\) that is itself a vector space under the same operations.

## Matrices

**Matrix Definition:**
\\[ A = \begin{pmatrix} a_{11} & a_{12} & \cdots & a_{1n} \\ a_{21} & a_{22} & \cdots & a_{2n} \\ \vdots & \vdots & \ddots & \vdots \\ a_{m1} & a_{m2} & \cdots & a_{mn} \end{pmatrix} \\]

**Matrix Addition:**
\\[ A + B = \begin{pmatrix} a_{11} + b_{11} & a_{12} + b_{12} & \cdots & a_{1n} + b_{1n} \\ a_{21} + b_{21} & a_{22} + b_{22} & \cdots & a_{2n} + b_{2n} \\ \vdots & \vdots & \ddots & \vdots \\ a_{m1} + b_{m1} & a_{m2} + b_{m2} & \cdots & a_{mn} + b_{mn} \end{pmatrix} \\]

**Scalar Multiplication:**
\\[ cA = \begin{pmatrix} c a_{11} & c a_{12} & \cdots & c a_{1n} \\ c a_{21} & c a_{22} & \cdots & c a_{2n} \\ \vdots & \vdots & \ddots & \vdots \\ c a_{m1} & c a_{m2} & \cdots & c a_{mn} \end{pmatrix} \\]

**Matrix Multiplication:**
\\[ AB = \begin{pmatrix} a_{11} & a_{12} & \cdots & a_{1n} \\ a_{21} & a_{22} & \cdots & a_{2n} \\ \vdots & \vdots & \ddots & \vdots \\ a_{m1} & a_{m2} & \cdots & a_{mn} \end{pmatrix} \begin{pmatrix} b_{11} & b_{12} & \cdots & b_{1p} \\ b_{21} & b_{22} & \cdots & b_{2p} \\ \vdots & \vdots & \ddots & \vdots \\ b_{n1} & b_{n2} & \cdots & b_{np} \end{pmatrix} \\]

**Transpose:**
\\[ A^T = \begin{pmatrix} a_{11} & a_{21} & \cdots & a_{m1} \\ a_{12} & a_{22} & \cdots & a_{m2} \\ \vdots & \vdots & \ddots & \vdots \\ a_{1n} & a_{2n} & \cdots & a_{mn} \end{pmatrix} \\]

**Determinant (for a 2x2 matrix):**
\\[ \det(A) = \begin{vmatrix} a & b \\ c & d \end{vmatrix} = ad - bc \\]

**Inverse (for a 2x2 matrix):**
\\[ A^{-1} = \frac{1}{\det(A)} \begin{pmatrix} d & -b \\ -c & a \end{pmatrix} \\]

**Properties of Determinants:**
1. \( \det(A^T) = \det(A) \)
2. \( \det(AB) = \det(A) \det(B) \)
3. \( \det(A^{-1}) = \frac{1}{\det(A)} \)

## Systems of Linear Equations

**General Form:**
\\[ A \mathbf{x} = \mathbf{b} \\]

**Augmented Matrix:**
\\[ \left( A | \mathbf{b} \right) \\]

**Gaussian Elimination:**
1. Form the augmented matrix.
2. Use row operations to reach row-echelon form.
3. Perform back-substitution to find the solution.

**Row Operations:**
1. Swap two rows.
2. Multiply a row by a non-zero scalar.
3. Add or subtract a multiple of one row to/from another row.

## Eigenvalues and Eigenvectors

**Eigenvalue Equation:**
\\[ A \mathbf{v} = \lambda \mathbf{v} \\]

**Characteristic Polynomial:**
\\[ \det(A - \lambda I) = 0 \\]

**Solving for Eigenvalues:**
Find the roots of the characteristic polynomial.

**Solving for Eigenvectors:**
Solve \\( (A - \lambda I) \mathbf{v} = 0 \\) for each eigenvalue \\( \lambda \\).

## Diagonalization

**Diagonalization of a Matrix:**
A matrix \( A \) is diagonalizable if there exists a matrix \( P \) such that
\\[ P^{-1} A P = D \\]
where \( D \) is a diagonal matrix.

**Steps to Diagonalize a Matrix:**
1. Find the eigenvalues of \( A \).
2. Find the eigenvectors of \( A \).
3. Form the matrix \( P \) using the eigenvectors as columns.
4. Form the diagonal matrix \( D \) using the eigenvalues.

## Inner Product and Orthogonality

**Inner Product (Dot Product):**
\\[ \langle \mathbf{u}, \mathbf{v} \rangle = \mathbf{u} \cdot \mathbf{v} = u_1 v_1 + u_2 v_2 + \cdots + u_n v_n \\]

**Norm (Length) of a Vector:**
\\[ \|\mathbf{v}\| = \sqrt{\langle \mathbf{v}, \mathbf{v} \rangle} \\]

**Orthogonality:**
Two vectors \( \mathbf{u} \) and \( \mathbf{v} \) are orthogonal if
\\[ \langle \mathbf{u}, \mathbf{v} \rangle = 0 \\]

**Orthogonal Projection:**
\\[ \text{proj}_{\mathbf{u}} \mathbf{v} = \frac{\langle \mathbf{v}, \mathbf{u} \rangle}{\langle \mathbf{u}, \mathbf{u} \rangle} \mathbf{u} \\]

**Gram-Schmidt Process:**
To orthogonalize a set of vectors \( \{\mathbf{v}_1, \mathbf{v}_2, \ldots, \mathbf{v}_n\} \):
1. Set \( \mathbf{u}_1 = \mathbf{v}_1 \).
2. For \( k = 2 \) to \( n \):
   \\[ \mathbf{u}_k = \mathbf{v}_k - \sum_{j=1}^{k-1} \text{proj}_{\mathbf{u}_j} \mathbf{v}_k \\]
3. Normalize \( \mathbf{u}_k \) to obtain orthonormal vectors \( \mathbf{e}_k = \frac{\mathbf{u}_k}{\|\mathbf{u}_k\|} \).

## Linear Transformations

**Definition:**
A linear transformation \( T \) from \( \mathbb{R}^n \) to \( \mathbb{R}^m \) is a function that satisfies:
1. \( T(\mathbf{u} + \mathbf{v}) = T(\mathbf{u}) + T(\mathbf{v}) \)
2. \( T(c \mathbf{u}) = c T(\mathbf{u}) \)

**Matrix Representation:**
If \( T(\mathbf{x}) = A \mathbf{x} \), then \( A \) is the matrix representation of \( T \).

**Kernel and Image:**
- Kernel: \( \ker(T) = \{\mathbf{x} \in \mathbb{R}^n : T(\mathbf{x}) = \mathbf{0}\} \)
- Image: \( \text{Im}(T) = \{T(\mathbf{x}) : \mathbf{x} \in \mathbb{R}^n\} \)

**Rank-Nullity Theorem:**
\\[ \text{dim}(\ker(T)) + \text{dim}(\text{Im}(T)) = n \\]

## Determinants and Inverses

**Determinant (for an \( n \times n \) matrix):**
\\[ \det(A) = \sum_{j=1}^n (-1)^{i+j} a_{ij} \det(A_{ij}) \\]
where \( A_{ij} \) is the \((n-1) \times (n-1)\) matrix obtained by deleting the \(i\)-th row and \(j\)-th column from \( A \).

**Properties of Inverses:**
1. \( (A^{-1})^{-1} = A \)
2. \( (AB)^{-1} = B^{-1}A^{-1} \)
3. \( (A^T)^{-1} = (A^{-1})^T \\]

**Cramer's Rule:**
For a system \( A \mathbf{x} = \mathbf{b} \) with \( n \) equations and \( n \) unknowns:
\\[ x_i = \frac{\det(A_i)}{\det(A)} \\]
where \( A_i \) is the matrix obtained by replacing the \(i\)-th column of \( A \) with \( \mathbf{b} \).

## Special Matrices

**Identity Matrix:**
\\[ I = \begin{pmatrix} 1 & 0 & \cdots & 0 \\ 0 & 1 & \cdots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \cdots & 1 \end{pmatrix} \\]

**Diagonal Matrix:**
\\[ D = \begin{pmatrix} d_1 & 0 & \cdots & 0 \\ 0 & d_2 & \cdots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \cdots & d_n \end{pmatrix} \\]

**Symmetric Matrix:**
\\[ A = A^T \\]

**Orthogonal Matrix:**
\\[ A^T A = A A^T = I \\]

**Positive Definite Matrix:**
A symmetric matrix \( A \) is positive definite if \( \mathbf{x}^T A \mathbf{x} > 0 \) for all non-zero vectors \( \mathbf{x} \).

## Quadratic Forms

**Quadratic Form:**
\\[ Q(\mathbf{x}) = \mathbf{x}^T A \mathbf{x} \\]
where \( A \) is a symmetric matrix.

**Classification of Quadratic Forms:**
1. Positive definite: All eigenvalues of \( A \) are positive.
2. Negative definite: All eigenvalues of \( A \) are negative.
3. Indefinite: Eigenvalues of \( A \) are both positive and negative.
4. Positive semidefinite: All eigenvalues of \( A \) are non-negative.
5. Negative semidefinite: All eigenvalues of \( A \) are non-positive.

## Singular Value Decomposition (SVD)

**SVD Definition:**
For any \( m \times n \) matrix \( A \), there exist orthogonal matrices \( U \) and \( V \) such that
\\[ A = U \Sigma V^T \\]
where \( \Sigma \) is a diagonal matrix with non-negative real numbers on the diagonal (singular values).

**Properties of SVD:**
1. \( U \) and \( V \) are orthogonal matrices.
2. \( \Sigma \) contains the singular values of \( A \).

## Orthogonal Projections and Least Squares

**Orthogonal Projection onto a Subspace \( W \):**
\\[ \mathbf{p} = A (A^T A)^{-1} A^T \mathbf{b} \\]
where \( A \) is a matrix whose columns form a basis for \( W \).

**Least Squares Solution:**
To solve \( A \mathbf{x} \approx \mathbf{b} \):
\\[ \mathbf{x} = (A^T A)^{-1} A^T \mathbf{b} \\]

## Eigenvalues and Eigenvectors

**Eigenvalue Equation:**
\\[ A \mathbf{v} = \lambda \mathbf{v} \\]

**Characteristic Polynomial:**
\\[ \det(A - \lambda I) = 0 \\]

**Solving for Eigenvalues:**
Find the roots of the characteristic polynomial.

**Solving for Eigenvectors:**
Solve \\( (A - \lambda I) \mathbf{v} = 0 \\) for each eigenvalue \( \lambda \).

## Jordan Canonical Form

**Jordan Form:**
A matrix \( A \) is similar to a Jordan matrix \( J \) if there exists an invertible matrix \( P \) such that
\\[ A = P J P^{-1} \\]

**Jordan Block:**
\\[ J_k(\lambda) = \begin{pmatrix} \lambda & 1 & 0 & \cdots & 0 \\ 0 & \lambda & 1 & \cdots & 0 \\ \vdots & \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & 0 & \cdots & \lambda \end{pmatrix} \\]

**Steps to Find Jordan Form:**
1. Find the eigenvalues of \( A \).
2. Find the eigenvectors and generalized eigenvectors of \( A \).
3. Form the Jordan blocks.
4. Form the matrix \( P \) using the eigenvectors and generalized eigenvectors.

## Complex Eigenvalues and Eigenvectors

**Complex Eigenvalue Equation:**
\\[ A \mathbf{v} = \lambda \mathbf{v} \\]

**Complex Characteristic Polynomial:**
\\[ \det(A - \lambda I) = 0 \\]

**Solving for Complex Eigenvalues:**
Find the complex roots of the characteristic polynomial.

**Solving for Complex Eigenvectors:**
Solve \\( (A - \lambda I) \mathbf{v} = 0 \\) for each complex eigenvalue \( \lambda \).

**Forming the Complex Matrix:**
Combine the real and imaginary parts of the eigenvectors to form a complex matrix.

**Properties of Complex Eigenvalues:**
1. Complex eigenvalues occur in conjugate pairs.
2. The eigenvectors corresponding to complex eigenvalues are also complex.

## Matrix Exponentials

**Definition:**
The matrix exponential of \( A \) is defined as
\\[ e^A = \sum_{k=0}^\infty \frac{A^k}{k!} \\]

**Properties:**
1. \( e^{A+B} = e^A e^B \) if \( AB = BA \).
2. \( e^{tA} \) solves the differential equation \( \mathbf{x}' = A \mathbf{x} \) with initial condition \( \mathbf{x}(0) = \mathbf{x}_0 \).

## Systems of Linear Differential Equations

**General Form:**
\\[ \mathbf{x}' = A \mathbf{x} \\]

**Solution Using Eigenvalues and Eigenvectors:**
1. Find the eigenvalues and eigenvectors of \( A \).
2. Form the general solution using the eigenvalues and eigenvectors.
3. Solve for the constants using the initial conditions.

**Solution Using Matrix Exponentials:**
\\[ \mathbf{x}(t) = e^{At} \mathbf{x}_0 \\]

**Diagonalizable Case:**
If \( A \) is diagonalizable, then
\\[ e^{At} = P e^{Dt} P^{-1} \\]
where \( D \) is a diagonal matrix containing the eigenvalues of \( A \).

**Non-Diagonalizable Case:**
If \( A \) is not diagonalizable, use the Jordan form to compute the matrix exponential.


