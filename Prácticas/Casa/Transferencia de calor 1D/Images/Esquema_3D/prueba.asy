/*
settings.outformat="png";
//settings.render=16;
//import three;
size(2.5cm,0);
//Ejes de coordenadas
Label Lx = Label("$x$", position=EndPoint);
draw((0,0) -- (0,4), arrow=Arrow(TeXHead), L=Lx);
//draw(O--4X ^^ O--5Y ^^ O--3Z);
//draw(box(O, (2, 3, 1)), blue);
*/


settings.outformat = "png";
settings.render = 16;

import three;
size(4cm, 0);

//Ejes coordenados
draw((3,0,0) -- (4,0,0), blue);
draw((0,4,0) -- (0,5,0), green);
draw((0,0,2) -- (0,0,3), red);

//---Barra---
//Líneas ocultas

//x
draw((0,0,0) -- (0.25,0,0));
draw((0.5,0,0) -- (0.75,0,0));
draw((1,0,0) -- (1.25,0,0));
draw((1.5,0,0) -- (1.75,0,0));
draw((2,0,0) -- (2.25,0,0));
draw((2.5,0,0) -- (2.75,0,0));
//y
draw((0,0,0) -- (0,0.25,0));
draw((0,0.5,0) -- (0,0.75,0));
draw((0,1,0) -- (0,1.25,0));
draw((0,1.5,0) -- (0,1.75,0));
draw((0,2,0) -- (0,2.25,0));
draw((0,2.5,0) -- (0,2.75,0));
draw((0,3,0) -- (0,3.25,0));
draw((0,3.5,0) -- (0,3.75,0));
//z
draw((0,0,0) -- (0,0,0.25));
draw((0,0,0.5) -- (0,0,0.75));
draw((0,0,1) -- (0,0,1.25));
draw((0,0,1.5) -- (0,0,1.75));

//Líneas sólidas
draw((0,0,2) -- (3,0,2));
draw((3,0,2) -- (3,0,0));
draw((3,0,0) -- (3,4,0));
draw((3,4,0) -- (0,4,0));
draw((0,4,0) -- (0,4,2));
draw((0,4,2) -- (3,4,2));
draw((0,4,2) -- (0,0,2));
draw((3,4,0) -- (3,4,2));
draw((3,4,2) -- (3,0,2));

//---Fragmento---
