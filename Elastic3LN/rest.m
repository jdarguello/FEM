function rest(N,NR,Rest);

% Aplicación de restricciones
% ===========================

  global K F;

  CC(2*N,2)= 0;
  for i= 1:NR
    if Rest(i,2)==1     
       j= Rest(i,1);
       CC(2*j-1,1)= 1;
       CC(2*j-1,2)= Rest(i,3);
    else
       j= Rest(i,1);
       CC(2*j,1)= 1;
       CC(2*j,2)= Rest(i,3);
    end   
  end

  for i= 1:2*N
    if CC(i,1)~=1
      for k= 1:2*N
        F(i)= F(i) + CC(k,2)*K(i,k); %si se quita en un lado...
      end
    end
  end

  for i= 1:2*N
    if CC(i,1)==1
      for j= 1:2*N
        K(i,j)= 0;
        K(j,i)= 0;
        K(i,i)= 1;
        F(i) = CC(i,2); % signo debe ser + para u=cc ?
      end
     end
  end
