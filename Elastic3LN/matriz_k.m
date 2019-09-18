function matriz_k(Nel,NNpe,D,XY,Top);

% C�lculo de matrices de elemento y ensamblado
% ============================================

  global K DB;

  % Lazo para todos los elementos
  % -----------------------------

  for Ie= 1:Nel

    % --- coordenadas

    for j= 1:NNpe
      Xe(j)= XY(Top(Ie,j),1);
      Ye(j)= XY(Top(Ie,j),2);
    end

    % --- constantes de interpolaci�n

%   a1= Xe(2)*Ye(3)-Xe(3)*Ye(2);
%   a2= Xe(3)*Ye(1)-Xe(1)*Ye(3);
%   a3= Xe(1)*Ye(2)-Xe(2)*Ye(1);
    b1= Ye(2)-Ye(3);
    b2= Ye(3)-Ye(1);
    b3= Ye(1)-Ye(2); 
    c1= Xe(3)-Xe(2);
    c2= Xe(1)-Xe(3);
    c3= Xe(2)-Xe(1);

    % --- area

    MArea=[ 1  Xe(1)  Ye(1);
            1  Xe(2)  Ye(2);
            1  Xe(3)  Ye(3)];
    Area= det(MArea)/2;

    % --- matriz B

    Be= [ b1  0 b2  0 b3  0;
          0  c1  0 c2  0 c3;
          c1 b1 c2 b2 c3 b3];
    Be= Be/2/Area;

    % --- matriz DB

    DBe= D*Be;
    if Ie == 1
      DB= DBe;
    else
      DB= [DB,DBe];
    end 

    % --- Matriz de rigidez

    Ke=Be'*DBe*Area; 

    % --- Ensamblado
    LM=[2*Top(Ie,1)-1;
        2*Top(Ie,1);
        2*Top(Ie,2)-1;
        2*Top(Ie,2);
        2*Top(Ie,3)-1;
        2*Top(Ie,3)];
    
    for j= 1:2*NNpe
      for k= 1:2*NNpe
        Ien= LM(j);
        Jen= LM(k);
        K(Ien,Jen)= K(Ien,Jen) + Ke(j,k);
      end
    end

  end
