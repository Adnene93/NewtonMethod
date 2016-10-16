%Remarque : la fonction est introduite comme étant une chaine de caractère en fonction de x%
function [ r ,iter] = RacineNewton( fonction,r0,epsilon,itermax)
syms f fderiv g x %a pour but de définir les symboles qui vont être utilisés%
f(x) = sym(fonction); %permet de récupérer une fonction a partir d'une chaine de caractère%
fderiv = diff(f(x)); %permet de dériver une fonction f 
g(x) = x - f(x)/fderiv;
i=1;
r=r0;
while (i<itermax &&(abs(eval(g(r)) - r) >= epsilon))
    r=eval(g(r)); % eval permet d'évaluer la fonction pour une valeur donné 
    i=i+1;
end
r=eval(g(r));
iter=i;
syms f fderiv g x clear; %permet de supprimer de la mémoire les symboles définient ci-dessus 
end


