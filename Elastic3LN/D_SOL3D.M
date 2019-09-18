function d_sol3d(Nel,NNpe,XY,Top,Sol);


  colormap(jet)
  axis equal

% Tamaño de dibujo de malla
% -------------------------

  Xmin=min(XY(:,1:1));
  Xmax=max(XY(:,1:1));
  Ymin=min(XY(:,2:2));
  Ymax=max(XY(:,2:2));
  Xplot=[(Xmin-(Xmax-Xmin)/8) (Xmax+(Xmax-Xmin)/8) ];
  Yplot=[(Ymin-(Ymax-Ymin)/8) (Ymax+(Ymax-Ymin)/8) ];


% Dibujo de Solución  nodal (3D)
% ------------------------------

  hold on
  for i= 1:Nel 
    for j= 1:NNpe
      jj   = Top(i,j);
      Xe(j)= XY(jj,1);
      Ye(j)= XY(jj,2);
      Se(j)= Sol(jj);
    end
    fill3(Xe,Ye,Se',Se');
  end
  hold off

      
