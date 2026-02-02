% Problem: Πρόβλημα Οριακών Τιμών με παραβολικές ΜΔΕ: 
% Διάχυση θερμότητας σε αγωγό
% Input: Μήκος αγωγού, Χρονική περίοδος, Οριακές συνθήκες τύπου Dirichlet
% για τη θερμοκρασία: α) τη χρονική στιγμή t=0, β) στο ανάντη άκρο του
% αγωγού, γ) στο κατάντη άκρο του αγωγού
% Expected Output: Προοσδιορισμός της χωρικής κατανομής της θερμοκρασίας
% για κάθε χρονική στιγμή με το: 1. Ρητό αριθμητικό σχήμα, 2. Απλό
% πεπλεγμένο σχήμα, 3. Πεπλεγμένο σχήμα Crank-Nikolson
% Extra: Έλεγχος της ευστάθειας

% Εκκαθάριση του περιβάλλοντος από προηγούμενες διεργασίες %\
clear;clc

% Τιμές του προβλήματος
D=1; % Σταθερός συντελεστής διάχυσης
L=1; % Μήκος αγωγού
T0=2; % Χρονική περίοδος μελέτης

% Χωρική διαμέριση
I=10;
dx=L/I;

% Προσδιορισμός χρονικής διαμέρισης για την ευστάθεια του ρητού σχήματος
N=ceil(2*D*T0/(dx).^2)+1;
dt=T0/N;

lamda=D*dt/(dx).^2;

% Κατασκευή υπολογιστικού πλέγματος (για τη χωρική μεταβλητή x
% και τη χρονική μεταβλητή t) %
x=zeros(1,I+1);
x(1)=0;
x(I+1)=L;
for i=2:I
    x(i)=x(i-1)+dx;
end

t=zeros(1,N+1);
t(1)=0;
t(N+1)=2;
for j=2:N
    t(j)=t(j-1)+dt;
end

clear i;clear j;

T=zeros(N+1,I+1);
T(1,1:I+1)=10;
T(1:N+1,1)=0;
T(1:N+1,I+1)=0;

Texp=T;
Timp=T;
Tcn=T;

% Υπολογισμός της κατανομής θερμοκρασίας Texp με ρητό αριθμητικό σχήμα %
for n = 1:N
    for i = 2:I
        Texp(n+1,i) = lamda*Texp(n,i-1) + (1-2*lamda)*Texp(n,i) + lamda*Texp(n,i+1);
    end
end

% Υπολογισμός της κατανομής θερμοκρασίας Timp με απλό πεπλεγμένο σχήμα %
A_imp=diag((1+2*lamda)*ones(I-1,1))+diag(-lamda*ones(I-2,1),1)+diag(-lamda*ones(I-2,1),-1);
for n=1:N
    Timp(n+1,2:I)=(A_imp\Timp(n,2:I)')';
end

% Υπολογισμός της κατανομής θερμοκρασίας Tcn με πεπλεγμένο σχήμα Crank-Nikolson %
A_cn=diag(2*(1+lamda)*ones(I-1,1))+diag(-lamda*ones(I-2,1),1)+diag(-lamda*ones(I-2,1),-1);
for n=1:N
    b=lamda*Tcn(n,1:I-1)+2*(1-lamda)*Tcn(n,2:I)+lamda*Tcn(n,3:I+1);
    Tcn(n+1,2:I)=(A_cn\b')';
end

clear A_cn;clear A_imp;

figure(1)
subplot(1,2,1)
plot(x, Texp)
xlabel('x (m)'); ylabel('T'); title('Ρητό αριθμητικό σχήμα (Texp(x))'); grid on
subplot(1,2,2)
plot(t, Texp')
xlabel('t (s)'); ylabel('T'); title('Ρητό αριθμητικό σχήμα (Texp(t))'); grid on

figure(2)
subplot(1,2,1)
plot(x, Timp)
xlabel('x (m)'); ylabel('T'); title('Απλό πεπλεγμένο σχήμα (Timp(x))'); grid on
subplot(1,2,2)
plot(t, Timp')
xlabel('t (s)'); ylabel('T'); title('Απλό πεπλεγμένο σχήμα (Timp(t))'); grid on

figure(3)
subplot(1,2,1)
plot(x, Tcn)
xlabel('x (m)'); ylabel('T'); title('Πεπλεγμένο σχήμα Crank-Nicolson (Tcn(x))'); grid on
subplot(1,2,2)
plot(t, Tcn')
xlabel('t (s)'); ylabel('T'); title('Πεπλεγμένο σχήμα Crank-Nicolson (Tcn(x))'); grid on