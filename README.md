# cfd_samps_2526
🌀 Solving Computational Fluid Dynamics (CFD) problems using MATLAB. This repository contains the code for various course assignments, demonstrating the implementation of numerical schemes for fluid flow analysis. A portfolio piece focused on the intersection of engineering principles and scientific programming.

1η ΣΕΙΡΑ ΑΣΚΗΣΕΩΝ (Ακ. Έτος: 2025-26)
(Αριθμητική επίλυση εξισώσεων και συστημάτων αλγεβρικών εξισώσεων)
Οι παρακάτω ασκήσεις είναι από το βιβλίο: Burden R. and Faires J., (2011). Numerical Analysis, 9th Edition, Brooks/Cole, Cengage Learning.

Άσκηση 1.1: Επίλυση τριδιαγώνιου συστήματος με τον αλγόριθμο Thomas
Αρχείο: cfdex11.m

Υλοποίηση του αλγορίθμου Thomas στην γλώσσα προγραμματισμού Matlab για την επίλυση του παρακάτω τριδιαγώνιου συστήματος:
code
Code
2x₁ -  x₂                              =  1
 x₁ + 2x₂ -  x₃                        =  2
     2x₂ + 4x₃ -  x₄                   = -1
              2x₄ - x₅                 = -2
               x₄ + 2x₅                = -1

Άσκηση 1.2: Επαναληπτικές μέθοδοι επίλυσης γραμμικών συστημάτων
Αρχείο: cfdex12.m

Υλοποίηση στην γλώσσα προγραμματισμού Matlab της επίλυσης του συστήματος της άσκησης Exercise set 7.3: 1(c) (σελίδα 459) με τις μεθόδους:
-Jacobi
-Gauss-Seidel
-Διαδοχικής χαλάρωσης (Successive Over-Relaxation - SOR) με ω = 1.1
Ως αρχική εκτίμηση της λύσης μπορεί να θεωρηθεί η x⁽⁰⁾ = 0.

Άσκηση 1.3: Επίλυση συστημάτων μη γραμμικών εξισώσεων
Αρχείο: cfdex13.m

Υλοποίηση στην γλώσσα προγραμματισμού Matlab της επίλυσης του συστήματος της άσκησης Exercise set 10.2: 2(b) (σελίδα 644).
Ως αρχική εκτίμηση της λύσης μπορεί να θεωρηθεί η x⁽⁰⁾ = 0.

Παρατήρηση για τις ασκήσεις 1.2 και 1.3:
Ο κώδικας που θα αναπτυχθεί θα πρέπει να συγκλίνει σύμφωνα με το επιθυμητό επίπεδο ακρίβειας που θα επιλεγεί από τον φοιτητή για την επίλυση του συστήματος εξισώσεων και όχι να εκτελείται μόνο για συγκεκριμένο αριθμό επαναλήψεων που τυχόν μπορεί να αναφέρεται στην εκφώνηση των ασκήσεων.
