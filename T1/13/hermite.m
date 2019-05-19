function y=hermite(xi, yi, dyi, x)

#Número de derivadas por elemento
counters=[];

#{
  Tamanho da matriz: npontos+nderivadas
#}
n=length(x);
MDiffs=zeros(n,n+1);

#Coluna 1: x
MDiffs(:,1)=x;

#Coluna 2: f(x)
for i=1:length(xi)
  k=xi(i);
  ci=0;
  for l=1:n
    
    if(k==x(l) && MDiffs(l,2)==0)
      MDiffs(l,2)=yi(i);
      ci++;
    end
    
  end
  counters=[counters, ci];
end

counters=counters.-1;
#completar tabela com valores das derivadas
# f^(j)'(xi)=cij
#
for i=1:length(counters)
    
    


for j=3:n
  for i=3:n-j
    #tal ponto (i,j) possui derivadas
    if(counters())
    if(MDiffs(i,j)==0)
      MDiffs(i, j+1) = ((MDiffs(i, j+1)-MDiffs(i, j))/(xi(i+j)-x(i)));
     end
    
  end
end

y=MDiffs;


#{
for j=2:n
  for i=2:n-j
    
    #tal ponto (i,j) possui derivadas
 
    if(MDiffs(i,j)==0)
      MDiffs(i, j+1) = ((MDiffs(i, j+1)-MDiffs(i, j))/(xi(i+j)-x(i)));
     end
    
  end
end

y=MDiffs;

#}





#{
Criação da tabela de derivadas

for j=2:n
  for i=2:n-j
  if(MDiffs(i,j)==0)
    MDiffs(i, j+1) = ((Mdiffs(i, j+1)-Mdiffs(i, j))/(xi(i+j)-x(i)));
  end
end
#}    

