# Calculus 3 Formulas

## Vectors

**Dot Product:**
\\[ \mathbf{a} \cdot \mathbf{b} = a_1 b_1 + a_2 b_2 + a_3 b_3 \\]
\\[ \mathbf{a} \cdot \mathbf{b} = \|\mathbf{a}\| \|\mathbf{b}\| \cos \theta \\]


**Projection of \(\mathbf{a}\) onto \(\mathbf{b}\):**
\\[ \text{proj}_{\mathbf{b}} \mathbf{a} = \frac{\mathbf{a} \cdot \mathbf{b}}{\mathbf{b} \cdot \mathbf{b}} \mathbf{b} \\]

**Cross Product:**
\\[ \mathbf{a} \times \mathbf{b} = \begin{vmatrix}
\mathbf{i} & \mathbf{j} & \mathbf{k} \\\\
a_1 & a_2 & a_3 \\\\
b_1 & b_2 & b_3 \\
\end{vmatrix} \\]
\\[ \|\mathbf{a} \times \mathbf{b}\| = \|\mathbf{a}\| \|\mathbf{b}\| \sin \theta \\]


**Area of Parallelogram (in vectors):**
\\[ \text{Area} = \|\mathbf{a} \times \mathbf{b}\| \\]

**Volume of Parallelepiped:**
\\[ \text{Volume} = |\mathbf{a} \cdot (\mathbf{b} \times \mathbf{c})| \\]

**Equation of a Line:**
\\[ \mathbf{r} = \mathbf{r_0} + t \mathbf{v} \\]

**Parametric Equation of a Line:**
\\[ \begin{cases}
x = x_0 + t a \\\\
y = y_0 + t b \\\\
z = z_0 + t c \\
\end{cases} \\]

**Symmetric Equation of a Line:**
\\[ \frac{x - x_0}{a} = \frac{y - y_0}{b} = \frac{z - z_0}{c} \\]

**Equation of a Plane (standard form):**
\\[ ax + by + cz = d \\]

**Equation of a Plane (general form):**
\\[ ax + by + cz + d = 0 \\]

**Distance from Point to Line:**
\\[ D = \frac{\|\mathbf{PQ} \times \mathbf{v}\|}{\|\mathbf{v}\|} \\]

**Distance from Point to Plane:**
\\[ D = \frac{|ax_1 + by_1 + cz_1 + d|}{\sqrt{a^2 + b^2 + c^2}} \\]

**Distance Between Parallel Planes:**
\\[ D = \frac{|d_1 - d_2|}{\sqrt{a^2 + b^2 + c^2}} \\]

**Position Vector for a Projectile:**
\\[ \mathbf{r}(t) = \left( v_{0x} t \right) \mathbf{i} + \left( v_{0y} t - \frac{1}{2} g t^2 \right) \mathbf{j} \\]

**Unit Tangent Vector:**
\\[ \mathbf{T}(t) = \frac{\mathbf{r}'(t)}{\|\mathbf{r}'(t)\|} \\]

**Principal Unit Normal Vector:**
\\[ \mathbf{N}(t) = \frac{\mathbf{T}'(t)}{\|\mathbf{T}'(t)\|} \\]

**Tangential and Normal Components of Acceleration:**
\\[ a_T = \mathbf{a} \cdot \mathbf{T} \\]
\\[ a_N = \sqrt{\|\mathbf{a}\|^2 - a_T^2} \\]

**Arc Length of a Space Curve:**
\\[ s = \int_a^b \|\mathbf{r}'(t)\| \, dt \\]

**Curvature:**
\\[ \kappa = \frac{\|\mathbf{T}'(t)\|}{\|\mathbf{r}'(t)\|} = \frac{\|\mathbf{r}'(t) \times \mathbf{r}''(t)\|}{\|\mathbf{r}'(t)\|^3} \\]

**Angle of Inclination:**
\\[ \theta = \arccos\left(\frac{a}{\sqrt{a^2 + b^2 + c^2}}\right) \\]

**Tangent Plane to Level Surface:**
\\[ z - z_0 = f_x(x_0, y_0)(x - x_0) + f_y(x_0, y_0)(y - y_0) \\]

**Normal Line:**
\\[ \frac{x - x_0}{f_x(x_0, y_0)} = \frac{y - y_0}{f_y(x_0, y_0)} = \frac{z - z_0}{-1} \\]

**Vector Fields:**
\\[ \mathbf{F}(x, y, z) = P(x, y, z) \mathbf{i} + Q(x, y, z) \mathbf{j} + R(x, y, z) \mathbf{k} \\]

**Inverse Square Fields:**
\\[ \mathbf{F}(\mathbf{r}) = \frac{k \mathbf{r}}{\|\mathbf{r}\|^3} \\]

**Conservative Vector Field Tests:**
\\[ \nabla \times \mathbf{F} = \mathbf{0} \\]

**Curl of a Vector Field:**
\\[ \nabla \times \mathbf{F} = \left( \frac{\partial R}{\partial y} - \frac{\partial Q}{\partial z} \right) \mathbf{i} + \left( \frac{\partial P}{\partial z} - \frac{\partial R}{\partial x} \right) \mathbf{j} + \left( \frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y} \right) \\]

**Divergence of a Vector Field:**
\\[ \nabla \cdot \mathbf{F} = \frac{\partial P}{\partial x} + \frac{\partial Q}{\partial y} + \frac{\partial R}{\partial z} \\]

**Line Integrals:**
\\[ \int_C f(x, y, z) \, ds \\]

**Line Integrals of a Vector Field:**
\\[ \int_C \mathbf{F} \cdot d\mathbf{r} \\]

**Differential Form of Line Integral:**
\\[ \int_C P \, dx + Q \, dy + R \, dz \\]

**Fundamental Theorem of Line Integrals:**
\\[ \int_C \nabla f \cdot d\mathbf{r} = f(\mathbf{r}(b)) - f(\mathbf{r}(a)) \\]

**Independence of Path:**
\\[ \int_C \mathbf{F} \cdot d\mathbf{r} = 0 \ \text{if} \ \mathbf{F} \ \text{is conservative} \\]

## Partial Derivatives

**Total Differential:**
\\[ dz = f_x \, dx + f_y \, dy \\]

**Chain Rule for Functions of One Independent Variable:**
\\[ \frac{dz}{dt} = \frac{\partial z}{\partial x} \frac{dx}{dt} + \frac{\partial z}{\partial y} \frac{dy}{dt} \\]

**Chain Rule for Functions of Two Independent Variables:**
\\[ \frac{\partial z}{\partial t} = \frac{\partial z}{\partial x} \frac{\partial x}{\partial t} + \frac{\partial z}{\partial y} \frac{\partial y}{\partial t} \\]

**Implicit Partial Differentiation:**
\\[ \frac{\partial z}{\partial x} = -\frac{F_x}{F_z} \\]
\\[ \frac{\partial z}{\partial y} = -\frac{F_y}{F_z} \\]

**Directional Derivative:**
\\[ D_{\mathbf{u}} f = \nabla f \cdot \mathbf{u} \\]

**The Gradient of a Function:**
\\[ \nabla f = \left( \frac{\partial f}{\partial x}, \frac{\partial f}{\partial y}, \frac{\partial f}{\partial z} \right) \\]

**Second Partials Test:**
\\[ D = f_{xx} f_{yy} - (f_{xy})^2 \\]

**Extreme Value Theorem:**
\\[ f \ \text{has a local maximum/minimum at} \ (a, b) \ \text{if} \ D > 0 \ \text{and} \ f_{xx} > 0 \ (\text{minimum}) \ \text{or} \ f_{xx} < 0 \ (\text{maximum}) \\]

**Lagrange Multipliers:**
\\[ \nabla f = \lambda \nabla g \\]

## Iterated, Double, and Repeated Integrals

**Rectangular Regions:**
\\[ \int_a^b \int_c^d f(x, y) \, dy \, dx \\]

**Fubini's Theorem:**
\\[ \int_a^b \int_c^d f(x, y) \, dy \, dx = \int_c^d \int_a^b f(x, y) \, dx \, dy \\]

**General Regions:**
\\[ \int_{\text{Region}} f(x, y) \, dA \\]

**Average Value of a Function Over a Region:**
\\[ \frac{1}{\text{Area}} \int_{\text{Region}} f(x, y) \, dA \\]

**Double Integrals in Polar Coordinates:**
\\[ \int_a^b \int_{r_1(\theta)}^{r_2(\theta)} f(r, \theta) \, r \, dr \, d\theta \\]

**Triple Integrals in Cylindrical Coordinates:**
\\[ \int_a^b \int_{r_1(\theta)}^{r_2(\theta)} \int_{z_1(r, \theta)}^{z_2(r, \theta)} f(r, \theta, z) \, r \, dz \, dr \, d\theta \\]

**Triple Integrals in Spherical Coordinates:**
\\[ \int_a^b \int_{0}^{\pi} \int_{0}^{2\pi} f(\rho, \phi, \theta) \, \rho^2 \sin(\phi) \, d\theta \, d\phi \, d\rho \\]

**Surface Area:**
\\[ \iint_S \|\mathbf{r}_u \times \mathbf{r}_v\| \, dA \\]

**Change of Variables for Double Integrals:**
\\[ \iint_R f(x, y) \, dx \, dy = \iint_{R'} f(g(u, v), h(u, v)) \left| \frac{\partial(x, y)}{\partial(u, v)} \right| \, du \, dv \\]

**Triple Integrals:**
\\[ \iiint_V f(x, y, z) \, dV \\]

**Green's Theorem:**
\\[ \oint_C (P \, dx + Q \, dy) = \iint_R \left( \frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y} \right) dA \\]

**Alternate Forms of Green's Theorem:**
\\[ \oint_C (L \, dx + M \, dy + N \, dz) = \iint_R (\nabla \times \mathbf{F}) \cdot \mathbf{n} \, dA \\]

**Parametric Surfaces:**
\\[ \mathbf{r}(u, v) = \langle x(u, v), y(u, v), z(u, v) \rangle \\]

**Area of Parametric Surface:**
\\[ \iint_D \|\mathbf{r}_u \times \mathbf{r}_v\| \, du \, dv \\]

**Surface Integrals:**
\\[ \iint_S f(x, y, z) \, dS \\]

**Flux Integrals:**
\\[ \iint_S \mathbf{F} \cdot \mathbf{n} \, dS \\]

**Divergence Theorem:**
\\[ \iiint_V (\nabla \cdot \mathbf{F}) \, dV = \iint_S \mathbf{F} \cdot \mathbf{n} \, dS \\]

**Stokes' Theorem:**
\\[ \iint_S (\nabla \times \mathbf{F}) \cdot \mathbf{n} \, dS = \oint_C \mathbf{F} \cdot d\mathbf{r} \\]

## Surfaces

**Ellipsoid:**
\\[ \frac{x^2}{a^2} + \frac{y^2}{b^2} + \frac{z^2}{c^2} = 1 \\]

**Hyperboloid of One Sheet:**
\\[ \frac{x^2}{a^2} + \frac{y^2}{b^2} - \frac{z^2}{c^2} = 1 \\]

**Hyperboloid of Two Sheets:**
\\[ \frac{x^2}{a^2} - \frac{y^2}{b^2} - \frac{z^2}{c^2} = 1 \\]

**Elliptic Cone:**
\\[ \frac{x^2}{a^2} + \frac{y^2}{b^2} - \frac{z^2}{c^2} = 0 \\]

**Elliptic Paraboloid:**
\\[ \frac{x^2}{a^2} + \frac{y^2}{b^2} = z \\]

**Hyperbolic Paraboloid (saddle):**
\\[ \frac{x^2}{a^2} - \frac{y^2}{b^2} = z \\]

## Coordinate System Conversions

**Cylindrical to Rectangular:**
\\[ x = r \cos \theta \\]
\\[ y = r \sin \theta \\]
\\[ z = z \\]

**Spherical to Rectangular:**
\\[ x = \rho \sin \phi \cos \theta \\]
\\[ y = \rho \sin \phi \sin \theta \\]
\\[ z = \rho \cos \phi \\]

**Spherical to Cylindrical:**
\\[ r = \rho \sin \phi \\]
\\[ \theta = \theta \\]
\\[ z = \rho \cos \phi \\]

**Cylindrical to Spherical:**
\\[ \rho = \sqrt{r^2 + z^2} \\]
\\[ \phi = \arctan \left( \frac{r}{z} \right) \\]
\\[ \theta = \theta \\]

