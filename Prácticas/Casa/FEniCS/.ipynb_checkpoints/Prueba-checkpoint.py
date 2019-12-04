from ngsolve import *
from netgen.geom2d import unit_square
import netgen.gui

from netgen.occ import *
geo = OCCGeometry("Seeder.iges")
msh = geo.GenerateMesh()