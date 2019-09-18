function d_malla(N,Nel,NNpe,XY,XYd,Top);

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
  for i= 1:Nel 
    xc=0;
    yc=0;
    for j= 1:NNpe
      Xe(j)= XY(Top(i,j),1);
      Ye(j)= XY(Top(i,j),2);
    end
    fill(Xe,Ye,'b');
  end
  hold off

% Numeración de nodos
% -------------------

 
  pause;
  
  hold on
  title('MALLA DEFORMADA con factor 100:1')
  for i= 1:Nel 
    xc=0;
    yc=0;
    for j= 1:NNpe
      Xe(j)= XYd(Top(i,j),1);
      Ye(j)= XYd(Top(i,j),2);
    end
    xc=xc/3;
    yc=yc/3;
    fill(Xe,Ye,'g');
    
  end
  hold off