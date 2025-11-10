# cfd_samps_2526
🌀 Solving Computational Fluid Dynamics (CFD) problems using MATLAB. This repository contains the code for various course assignments, demonstrating the implementation of numerical schemes for fluid flow analysis. A portfolio piece focused on the intersection of engineering principles and scientific programming.

1st SET OF EXERCISES (Academic Year: 2025-26)
(Numerical solution of equations and systems of algebraic equations)

The following exercises are from the book: Burden, R. and Faires, J. (2011). Numerical Analysis, 9th Edition, Brooks/Cole, Cengage Learning.

Exercise 1.1: Solving a tridiagonal system using the Thomas algorithm
File: cfdex11.m

Implementation of the Thomas algorithm in the MATLAB programming language to solve the following tridiagonal system:
Code
2x₁ -  x₂                              =  1
 x₁ + 2x₂ -  x₃                        =  2
     2x₂ + 4x₃ -  x₄                   = -1
              2x₄ - x₅                 = -2
               x₄ + 2x₅                = -1

Exercise 1.2: Iterative methods for solving linear systems
File: cfdex12.m

Implementation in the Matlab programming language of the solution for the system from Exercise set 7.3: 1(c) (page 459) using the following methods:
> Jacobi
> Gauss-Seidel
> Successive Over-Relaxation (SOR) with ω = 1.1
An initial guess of x⁽⁰⁾ = 0 can be used for the solution.

Exercise 1.3: Solving systems of nonlinear equations
File: cfdex13.m

Implementation in the Matlab programming language of the solution for the system from Exercise set 10.2: 2(b) (page 644).
An initial guess of x⁽⁰⁾ = 0 can be used for the solution.

Note for exercises 1.2 and 1.3:
The developed code should converge according to a desired level of accuracy selected by the student for the solution of the system of equations, and should not be executed only for a specific number of iterations that might be mentioned in the exercise description.
