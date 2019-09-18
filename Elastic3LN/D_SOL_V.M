function d_sol_v(Nel,NNpe,Factor,XY,Top,V)

% Dibujo de resultados en elemento (vectores)
% ===========================================

  colormap(jet)

  % --- tamaño de dibujo de malla

  Xmin=min(XY(:,1:1));
  Xmax=max(XY(:,1:1));
  Ymin=min(XY(:,2:2));
  Ymax=max(XY(:,2:2));
  Xplot=[(Xmin-(Xmax-Xmin)/8) (Xmax+(Xmax-Xmin)/8) ];
  Yplot=[(Ymin-(Ymax-Ymin)/8) (Ymax+(Ymax-Ymin)/8) ];

  % --- dibujo de vectores

  axis([Xplot Yplot]);
  axis equal;

  hold on

  for i= 1:Nel 
    for j= 1:NNpe
      jj= Top(i,j);
      Xe(j)= XY(jj,1);
      Ye(j)= XY(jj,2);
    end
    fill(Xe,Ye,'b');
    Xm= (Xe(1) + Xe(2) + Xe(3))/3.0;
    Ym= (Ye(1) + Ye(2) + Ye(3))/3.0;
    Xm= Xm -Factor*V(1,i);
    Ym= Ym -Factor*V(2,i);
    Xm1= Xm + 2*Factor*V(1,i);
    Ym1= Ym + 2*Factor*V(2,i);
    plot([Xm Xm1] , [Ym Ym1],'w');
  end
  hold off

