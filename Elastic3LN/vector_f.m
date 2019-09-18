function vector_f(NCl,XY,CargasL);

% Ensamblado del vector de carga
% ==============================

  % --- Cargas en lado
  % --- (solo carga cte)

  global F

 for i= 1:NCl
    Long= sqrt( (XY(CargasL(i,1),1)-XY(CargasL(i,2),1))^2 + ...
                (XY(CargasL(i,1),2)-XY(CargasL(i,2),2))^2   );
    sena=(XY(CargasL(i,2),2)-XY(CargasL(i,1),2))/Long;
    cosa=(XY(CargasL(i,2),1)-XY(CargasL(i,1),1))/Long;
            
    for j= 1:2
      Ien= 2*CargasL(i,j)-1;
      F(Ien:Ien+1)= F(Ien:Ien+1) - Long*CargasL(i,3)/2*[(sena) (-cosa)]; 
    end
 end

  