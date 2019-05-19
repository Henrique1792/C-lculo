function interp=baricenter(func)
% Avalia o polinômio de interpolação na forma baricêntrica
% entre os pontos [-1, 1]
% @param: função
% a função será avaliada com 5, 10 e 15 pontos igualmente espaçados

#vetores de inicialização
v5=linspace(-1,1, 5);
v10=linspace(-1,1, 10);
v15=linspace(-1,1, 15);


n=[length(v5), length(v10), length(v15)];
wk=wk_gen(v5,v10,v15)


interp=0;












function wk=wk_gen(v5, v10, v15)
% gera o vetor com todos os valores de wk previamente calculados
% @param: vetores de 5 posições, de 10 posições e de 15 posições
%
prev=[];
#Calculando wk

#5 posições
w=1;
for k=1:length(v5)
    for i=1:length(v5)
        if(i~=k)
            w*=(1/(v5(k)-v5(i)));
            end
    end
end
prev=[prev, w];

#10 posições
w=1;
for k=1:length(v10)
    for i=1:length(v10)
        if(i~=k)
            w*=(1/(v10(k)-v10(i)));
            end
    end
end
prev=[prev, w];

#15 posições
w=1;
for k=1:length(v15)
    for i=1:length(v15)
        if(i~=k)
            w*=(1/(v15(k)-v15(i)));
            end
    end
end
wk=[prev, w];
