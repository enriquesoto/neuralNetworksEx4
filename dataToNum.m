function[names, A] = dataToNum(file, numCar,featureXcar, numRes, featreXres)
[A,N] =readFromFile(file,',');
cols = numCar + numRes;
names =cell(cols,max(featureXcar,featreXres));

for i=1:N
  %%TOTALES%%
  for j=1:cols
    for k=1:featureXcar
      if(~strcmp(names{j,k},A(i,j)) && isempty(names{j,k}))
         names(j,k) = A(i,j);
         A(i,j) = k;
        break;        
      elseif (strcmp(names{j,k},A(i,j)))
         A(i,j) = k;
         break;
      endif
   endfor
  endfor
endfor