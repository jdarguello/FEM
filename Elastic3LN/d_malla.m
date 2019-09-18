function d_malla(N,Nel,NNpe,XY,Top);

  colormap(jet)
  clf
  axis equal

% Obtención de escalas de dibujo
% ------------------------------

  Xmin=min(XY(:,1:1));
  Xmax=max(XY(:,1:1));
  Ymin=min(XY(:,2:2));
  Ymax=max(XY(:,2:2));
  Xplot=[(Xmin-(Xmax-Xmin)/8) (Xmax+(Xmax-Xmin)/8) ];
  Yplot=[(Ymin-(Ymax-Ymin)/8) (Ymax+(Ymax-Ymin)/8) ];

% Dibujo de la malla
% ------------------

  axis([Xplot Yplot]);
  hold on
  title('MALLA DE ELEMENTOS FINITOS')
  for i= 1:Nel 
    xc=0;
    yc=0;
    for j= 1:NNpe
      Xe(j)= XY(Top(i,j),1);
      Ye(j)= XY(Top(i,j),2); 
      xc=xc+Xe(j);
      yc=yc+Ye(j);
    end
    xc=xc/3;
    yc=yc/3;
    fill(Xe,Ye,'g');
    text(xc,yc,num2str(i));
  end
  hold off

% Numeración de nodos
% -------------------

  for i= 1:N
    text(XY(i,1),XY(i,2),num2str(i));
  end
