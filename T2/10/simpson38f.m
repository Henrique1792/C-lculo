function I=simpson38f(fun, a, b, N)
% fun: função alvo
% [a,b]: Intervalo Dado
% N: qtde de subintervalos (divisível por 3)

if(rem(N,3)~=0)
    error("Precisa ser múltiplo de 3")
end


#determinando h
h=(b-a)/N;

#intervalos de xi
xi=linspace(a,b, N+1);
#valores da função
yi=fun(xi);

I=(3/8)*h*(yi(1)+3*yi(2)+3*yi(3)+yi(4));

