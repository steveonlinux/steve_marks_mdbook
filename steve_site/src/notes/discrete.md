# Discrete Structures

## Logic

### Propositional Logic

Propositional logic deals with statements that are either true or false.

- **Negation**: If \( P \) is a proposition, then the negation of \( P \) is written as \( \neg P \).
- **Conjunction**: If \( P \) and \( Q \) are propositions, then the conjunction of \( P \) and \( Q \) is written as \( P \land Q \).
- **Disjunction**: If \( P \) and \( Q \) are propositions, then the disjunction of \( P \) and \( Q \) is written as \( P \lor Q \).

Examples:
\\[
\neg P
\\]

\\[
P \land Q
\\]

\\[
P \lor Q
\\]

### Truth Tables

Truth tables are used to determine the truth value of logical expressions.

Example for \( P \land Q \):

| \( P \) | \( Q \) | \( P \land Q \) |
|:-------:|:-------:|:--------------:|
| T       | T       | T              |
| T       | F       | F              |
| F       | T       | F              |
| F       | F       | F              |

## Logical Laws 

| Category            | Law Name           | Logical Expression |
|---------------------|--------------------|--------------------|
| **Identity Laws**   | Identity for \(\land\)  | \\[ P \land \text{true} \equiv P \\] |
|                     | Identity for \(\lor\)   | \\[ P \lor \text{false} \equiv P \\] |
| **Domination Laws** | Domination for \(\lor\) | \\[ P \lor \text{true} \equiv \text{true} \\] |
|                     | Domination for \(\land\)| \\[ P \land \text{false} \equiv \text{false} \\] |
| **Idempotent Laws** | Idempotent for \(\lor\) | \\[ P \lor P \equiv P \\] |
|                     | Idempotent for \(\land\)| \\[ P \land P \equiv P \\] |
| **Double Negation** |                      | \\[ \neg (\neg P) \equiv P \\] |
| **Commutative Laws**| Commutative for \(\lor\)| \\[ P \lor Q \equiv Q \lor P \\] |
|                     | Commutative for \(\land\)| \\[ P \land Q \equiv Q \land P \\] |
| **Associative Laws**| Associative for \(\lor\)| \\[ (P \lor Q) \lor R \equiv P \lor (Q \lor R) \\] |
|                     | Associative for \(\land\)| \\[ (P \land Q) \land R \equiv P \land (Q \land R) \\] |
| **Distributive Laws**| Distributive of \(\land\) over \(\lor\) | \\[ P \land (Q \lor R) \equiv (P \land Q) \lor (P \land R) \\] |
|                     | Distributive of \(\lor\) over \(\land\) | \\[ P \lor (Q \land R) \equiv (P \lor Q) \land (P \lor R) \\] |
| **De Morgan's Laws**| De Morgan for \(\land\) | \\[ \neg (P \land Q) \equiv \neg P \lor \neg Q \\] |
|                     | De Morgan for \(\lor\)  | \\[ \neg (P \lor Q) \equiv \neg P \land \neg Q \\] |
| **Absorption Laws** | Absorption for \(\lor\)| \\[ P \lor (P \land Q) \equiv P \\] |
|                     | Absorption for \(\land\)| \\[ P \land (P \lor Q) \equiv P \\] |
| **Negation Laws**   | Negation of \(\lor\)    | \\[ P \lor \neg P \equiv \text{true} \\] |
|                     | Negation of \(\land\)   | \\[ P \land \neg P \equiv \text{false} \\] |
| **Propositional Laws** | Contradiction Law    | \\[ \neg \text{true} \equiv \text{false} \\] |
|                     | Tautology Law       | \\[ \neg \text{false} \equiv \text{true} \\] |
| **Implication Laws**| Implication Definition | \\[ P \to Q \equiv \neg P \lor Q \\] |
|                     | Contrapositive      | \\[ P \to Q \equiv \neg Q \to \neg P \\] |
|                     | Implication Identity| \\[ P \to P \equiv \text{true} \\] |
|                     | Exportation         | \\[ (P \to (Q \to R)) \equiv ((P \land Q) \to R) \\] |
|                     | Hypothetical Syllogism | \\[ (P \to Q) \land (Q \to R) \to (P \to R) \\] |
| **Biconditional Laws**| Biconditional Definition | \\[ P \leftrightarrow Q \equiv (P \to Q) \land (Q \to P) \\] |
|                     | Biconditional Commutative | \\[ P \leftrightarrow Q \equiv Q \leftrightarrow P \\] |
|                     | Biconditional Associative | \\[ (P \leftrightarrow Q) \leftrightarrow R \equiv P \leftrightarrow (Q \leftrightarrow R) \\] |
|                     | Biconditional Identity | \\[ P \leftrightarrow P \equiv \text{true} \\] |
| **Quantifier Laws** | Universal Instantiation | \\[ (\forall x \, P(x)) \to P(c) \\] |
|                     | Existential Instantiation | \\[ (\exists x \, P(x)) \to P(c) \\] |
|                     | Universal Generalization | \\[ P(c) \to (\forall x \, P(x)) \\] |
|                     | Existential Generalization | \\[ P(c) \to (\exists x \, P(x)) \\] |
|                     | Negation of Universal Quantifier | \\[ \neg (\forall x \, P(x)) \equiv \exists x \, \neg P(x) \\] |
|                     | Negation of Existential Quantifier | \\[ \neg (\exists x \, P(x)) \equiv \forall x \, \neg P(x) \\] |
| **Set Laws**       | Union with Universal Set | \\[ A \cup U = U \\] |
|                    | Intersection with Universal Set | \\[ A \cap U = A \\] |
|                    | Union with Empty Set | \\[ A \cup \emptyset = A \\] |
|                    | Intersection with Empty Set | \\[ A \cap \emptyset = \emptyset \\] |
|                    | Complement Laws | \\[ A \cup A' = U \\] |
|                    |                 | \\[ A \cap A' = \emptyset \\] |
| **Additional Laws** | Distributive for Quantifiers | \\[ \forall x (P(x) \land Q(x)) \equiv (\forall x \, P(x)) \land (\forall x \, Q(x)) \\] |
|                    |                                   | \\[ \exists x (P(x) \lor Q(x)) \equiv (\exists x \, P(x)) \lor (\exists x \, Q(x)) \\] |

---

## Sets

A set is a collection of distinct objects.

### Set Operations

- **Union**: The union of sets \( A \) and \( B \) is written as \( A \cup B \).
- **Intersection**: The intersection of sets \( A \) and \( B \) is written as \( A \cap B \).
- **Difference**: The difference of sets \( A \) and \( B \) is written as \( A - B \).

Examples:
\\[
A \cup B
\\]

\\[
A \cap B
\\]

\\[
A - B
\\]

### Cartesian Product

The Cartesian product of sets \( A \) and \( B \) is written as \( A \times B \).

Example:
\\[
A \times B = \{ (a, b) \mid a \in A, b \in B \}
\\]

## Functions

A function \( f \) from a set \( A \) to a set \( B \) is a rule that assigns to each element of \( A \) exactly one element of \( B \).

### Function Notation

If \( f \) is a function from \( A \) to \( B \), we write \( f: A \to B \).

Example:
\\[
f(x) = x^2
\\]

### Types of Functions

- **Injective (One-to-One)**: A function \( f \) is injective if \( f(a) = f(b) \) implies \( a = b \).
- **Surjective (Onto)**: A function \( f \) is surjective if for every \( b \in B \), there exists \( a \in A \) such that \( f(a) = b \).
- **Bijective**: A function \( f \) is bijective if it is both injective and surjective.

## Relations

A relation \( R \) from a set \( A \) to a set \( B \) is a subset of \( A \times B \).

### Properties of Relations

- **Reflexive**: A relation \( R \) on a set \( A \) is reflexive if \( (a, a) \in R \) for all \( a \in A \).
- **Symmetric**: A relation \( R \) on a set \( A \) is symmetric if \( (a, b) \in R \) implies \( (b, a) \in R \).
- **Transitive**: A relation \( R \) on a set \( A \) is transitive if \( (a, b) \in R \) and \( (b, c) \in R \) imply \( (a, c) \in R \).

## Combinatorics

### Basic Principles

- **Addition Principle**: If there are \( n \) ways to do something and \( m \) ways to do another thing, and these two things cannot be done at the same time, then there are \( n + m \) ways to choose one of the actions.
- **Multiplication Principle**: If there are \( n \) ways to do something and \( m \) ways to do another thing after that, then there are \( n \times m \) ways to do both actions.

### Permutations

A permutation of a set is an arrangement of its elements in a specific order.

Example for permutations of a set with \( n \) elements:
\\[
P(n) = n!
\\]

### Combinations

A combination is a selection of items from a larger pool where the order does not matter.

Example for combinations of \( n \) elements taken \( r \) at a time:
\\[
C(n, r) = \frac{n!}{r!(n-r)!}
\\]

## Graph Theory

### Basic Definitions

- **Graph**: A graph \( G \) consists of a set of vertices \( V \) and a set of edges \( E \).
- **Directed Graph (Digraph)**: A graph where edges have a direction.

### Types of Graphs

- **Complete Graph**: A graph in which there is a unique edge between every pair of vertices.
- **Bipartite Graph**: A graph whose vertices can be divided into two disjoint sets such that every edge connects a vertex in one set to a vertex in the other set.

### Graph Representation

- **Adjacency Matrix**: A square matrix used to represent a finite graph.
- **Adjacency List**: A collection of lists or sets used to represent a graph.

## Example Graph Theory Problems

### Eulerian Path

An Eulerian path in a graph is a path that visits every edge exactly once.

### Hamiltonian Path

A Hamiltonian path in a graph is a path that visits every vertex exactly once.

\[
\text{Example Graph Theory Equations:}
\]

Euler's formula for planar graphs:
\\[
V - E + F = 2
\\]

---

This content covers the basics of discrete structures in computer science. Each topic includes definitions, examples, and relevant equations formatted using MathJax for mdBook.

