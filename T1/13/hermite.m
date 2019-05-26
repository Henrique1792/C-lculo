function y=hermite(xi, yi, dyi, x)
% Determinar o polinômio por Hermite, utilizando a forma de Newton
% @input: pontos [ xi,yi ], valor das derivadas dyi, x são os pontos de avaliação do polinômio.
% @output: polinômio resultante.
%{
    parte A

    
    Número de derivadas por elemento
%}

counters=[];

%{
#  Tamanho da matriz: npontos+nderivadas
%}

n=length(x);
MDiffs=zeros(n);

#Coluna 1: f(x)
for i=1:length(xi)
  k=xi(i);
  ci=0;
  for l=1:n
        if(k==x(l) && MDiffs(l,2)==0)
          MDiffs(l,1)=yi(i);
          ci++;
        end
  end
  counters=[counters, ci];
end

counters=counters.-1

%{
    completar tabela com valores das derivadas
    P_2n+1(xi)=ci0
    P'_2n+1(xi)=ci1
        i=0..n
%}    
k=length(dyi);
for j=2:n
    for i=2:n-j+1
        MDiffs(i,j)=(MDiffs(i+1,j-1)-MDiffs(i, j-1))/(x(i+j-1)-x(i))
    end
end
y=MDiffs;

%{
    completar tabela com valores das derivadas
    P_2n+1(xi)=ci0
    P'_2n+1(xi)=ci1
        i=0..n
    
for i=1:length(counters)
    for j=3:n
          for i=3:n-j
                #tal ponto (i,j) possui derivadas
                if(MDiffs(i,j)==0)
                  MDiffs(i, j+1) = ((MDiffs(i, j+1)-MDiffs(i, j))/(xi(i+j)-x(i)));
                end
          end
    end
end

y=MDiffs;
%}

%{
#for j=2:n
#  for i=2:n-j
#    
#    #tal ponto (i,j) possui derivadas
# 
#    if(MDiffs(i,j)==0)
#      MDiffs(i, j+1) = ((MDiffs(i, j+1)-MDiffs(i, j))/(xi(i+j)-x(i)));
#     end
#    
#  end
#end
#
#y=MDiffs;
#
%}

