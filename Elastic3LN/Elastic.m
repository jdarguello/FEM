  clear all

% Definici�n del modelo de elementos finitos
% ===========================================

  load XY
  load Top
  load CargasL
  load Rest
  v=.3;
  E=200e9;                                        %GPa  
  CargasL(:,3)=1e6*CargasL(:,3)                   %MPa
  
  D=(E/(1-v^2))*[1 v 0 ;v 1 0; 0 0 (1-v)/2];

% Par�metros del problema
% ===========================================

  N    = size(XY,1)
  Nel  = size(Top,1)
  NNpe = size(Top,2)
  NCl  = size(CargasL,1)
  NR   = size(Rest,1)


% Dibujo de la malla
% ===========================================

  d_malla(N,Nel,NNpe,XY,Top);
  pause;


% C�lculo de matrices de rigidez de
% elemento y ensamblado
% ===========================================

  global K DB;
  K(2*N,2*N)= 0;
  DB(3,2*NNpe*Nel)= 0;
  matriz_k(Nel,NNpe,D,XY,Top);


% Dibujo de matriz K
% ===========================================

  clf
  spy(K);
  pause
  
% Calculo de vectores {f} de elemento
% y ensamblado
% ===========================================

  % --- Esfuerzo normal en lado 
  % --- de elemento constante.

  global F
  F(2*N)=0;
   vector_f (NCl,XY,CargasL);

% Aplicaci�n de condiciones de contorno
% en valor del desplazamiento
% ===========================================

  rest(N,NR,Rest);

% Resoluci�n del sistema de ecuaciones
% ===========================================

  Sol= K\F';
  
  
% Dibujo de malla deformada
%===========================================
  for i=1:N
      u(i,1)=Sol(2*i-1);
      u(i,2)=Sol(2*i);
  end    
  XYd=XY+u*1e2;
  d_mallad(N,Nel,NNpe,XY,XYd,Top);
  pause;
    
% Calculo de esfuerzos en elementos
% y nodos (promediado)
% ===========================================
  
  global S SN; 
  S(3,2*Nel) = 0;
  SN(N,3)= 0;
  cal_s(Nel,NNpe,N,DB,Sol,Top);

% Dibujo de la soluci�n  nodal (3D)
% ===========================================

 %clf
 %view(-37.5,30);
 %title('Potencial');
 %d_sol3d(Nel,NNpe,XY,Top,Sol);
 %pause;
      
% Dibujo de la soluci�n  nodal
% ===========================================
 
  clf
  title('Esfuerzo X')
  d_sol_n(Nel,NNpe,XY,Top,SN(:,1));
 
  pause;
  
  clf
  title('Esfuerzo - X ')
  d_sol_nl(Nel,NNpe,XY,Top,SN(:,1));
  pause;
  
  clf
  title('Esfuerzo Y')
  d_sol_n(Nel,NNpe,XY,Top,SN(:,2));
  pause;
  
  clf
  title('Esfuerzo - Y Valor absoluto   ')
  d_sol_nl(Nel,NNpe,XY,Top,abs(SN(:,2:2)));
  pause;
  
  clf
  title('Esfuerzo Cortante')
  d_sol_n(Nel,NNpe,XY,Top,SN(:,3));
  pause;
  
% Dibujo de esfuerzos de elemento
% ===========================================

  clf
  title('Esfuerzo - X')
  d_sol_e(Nel,NNpe,XY,Top,S(1,:));
  pause;

  clf
  title('Esfuerzo - Y')
  d_sol_e(Nel,NNpe,XY,Top,S(2,:));
  pause;
  
  %cortante
  

% Dibujo de desplazamientos
% ===========================================


  clf;
  for i= 1:N
    uT(i)= sqrt(u(i,1)^2 + u(i,2)^2);
  end
  title('Dezplazamientos')
  d_sol_nl(Nel,NNpe,XYd,Top,uT);
  pause;
   
% Dibujo de resultados en elemento (vectores)
% ===========================================

%  clf
 % title('Velocidad')
  %Factor = 0.05;
  %d_sol_v(Nel,NNpe,Factor,XY,Top,V);
  %pause;