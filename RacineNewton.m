%Remarque : la fonction est introduite comme �tant une chaine de caract�re en fonction de x%
function [ r ,iter] = RacineNewton( fonction,r0,epsilon,itermax)
syms f fderiv g x %a pour but de d�finir les symboles qui vont �tre utilis�s%
f(x) = sym(fonction); %permet de r�cup�rer une fonction a partir d'une chaine de caract�re%
fderiv = diff(f(x)); %permet de d�river une fonction f 
g(x) = x - f(x)/fderiv;
i=1;
r=r0;
while (i<itermax &&(abs(eval(g(r)) - r) >= epsilon))
    r=eval(g(r)); % eval permet d'�valuer la fonction pour une valeur donn� 
    i=i+1;
end
r=eval(g(r));
iter=i;
syms f fderiv g x clear; %permet de supprimer de la m�moire les symboles d�finient ci-dessus 
end


