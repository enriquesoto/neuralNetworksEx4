function[B] = dataToNumTest(file, numCar,featureXcar,names)

[A,N] =readFromFile(file,',');
[m n] = size(A);
B= zeros(m,n);
for i= 1:m
  for j=1:numCar
    for l= 1:featureXcar
      if(strcmp(A{i,j},names{j,l}))
        B(i,j)=l;
        break;
       endif
    endfor  
  endfor
endfor