function d_sol_e(Nel,NNpe,XY,Top,Sole);


  colormap(jet)
  axis equal

% Tamaño de dibujo de malla
% -------------------------

  Xmin=min(XY(:,1:1));
  Xmax=max(XY(:,1:1));
  Ymin=min(XY(:,2:2));
  Ymax=max(XY(:,2:2));
  Xplot=[(Xmin-(Xmax-Xmin)/8) (Xmax+(Xmax-Xmin)/4) ];
  Yplot=[(Ymin-(Ymax-Ymin)/8) (Ymax+(Ymax-Ymin)/8) ];

  X1= Xmax +   (Xmax-Xmin)/16;
  X2= Xmax + 2*(Xmax-Xmin)/16;
  X3= Xmax + 3*(Xmax-Xmin)/16;

  
% Dibujo de resultados en elemento
% --------------------------------

  axis([Xplot Yplot]);
  Zmin= min(Sole);
  Zmax= max(Sole);
  caxis([Zmin,Zmax]);

  hold on
  for i= 1:Nel 
    for j= 1:NNpe
      jj= Top(i,j);
      Xe(j)= XY(jj,1);
      Ye(j)= XY(jj,2);
    end
    fill(Xe,Ye,Sole(i));
  end
  Xc= [X1 X2 X2 X1];
  Yc= [Ymin Ymin Ymax Ymax];
  Zc= [Zmin Zmin Zmax Zmax];
  fill(Xc,Yc,Zc);
  for i= 1:11
    text(X3,Ymin + (i-1)*(Ymax-Ymin)/10,...
                   num2str(Zmin+(i-1)*(Zmax-Zmin)/10));
   end
  hold off

