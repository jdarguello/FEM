function cal_s(Nel,NNpe,N,DB,Sol,Top);

% Calculo de Esfuerzos en elementos
% ===================================

  global S SN;

  for i= 1:Nel
    for j= 1:NNpe
      Sole(2*j-1)= Sol(2*Top(i,j)-1);
      Sole(2*j)=Sol(2*Top(i,j));
    end
    DBe= DB(:,(i-1)*2*NNpe+1:i*2*NNpe);
    Se= DBe*Sole';
    if i == 1
      S= Se;
    else
      S= [S Se];
    end
  end

% Calculo de Esfuerzos en nodos (promediado)
% ============================================

  NeN(N) = 0;

  for i= 1:Nel
    for j= 1:NNpe
      In=Top(i,j);
      NeN(In)= NeN(In) + 1;   %numero entradas por nodo
      for k= 1:3
        SN(In,k) = SN(In,k) + S(k,i);
      end
    end
  end

  for i= 1:N
    for k= 1:3
      SN(i,k)= SN(i,k)/NeN(i);
    end
  end

