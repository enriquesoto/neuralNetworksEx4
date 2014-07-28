function [A,i] = readFromFile(filename,separator)

  fid = fopen(filename,'r');
  if (fid < 0) 
	printf('Error:could not open file\n')
  else
  i=1;
	while ~feof(fid),
		line = fgetl(fid);
    A(i,:) = strsplit(line,separator,false);     
    i++;
    %% process line %% 
	end;
        fclose(fid);
        i=i-1;
  end;
  
endfunction