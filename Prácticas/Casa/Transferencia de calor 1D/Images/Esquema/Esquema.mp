%---Output format---
outputformat := "png";
outputtemplate := "%j-%c.%o";
hppp := 0.125;
vppp := 0.125;

%---Document size---
Gx = 215.9mm;
Gy = 279.4mm;

%---Diagrama 3D---
beginfig(3);

%Dimensiones generales
alto = 2cm; ancho = 8cm; prof = 3cm;
al = alto+1.5cm; an = ancho+1.5cm; pr = prof+1.5cm;

%Ejes coordenados
Point E;
E = (0,0,0); 

endfig;