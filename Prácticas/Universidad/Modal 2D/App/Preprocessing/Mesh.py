import matplotlib.pyplot as plt
from ipywidgets import interact, interactive, interact_manual
from Geometry import *

class Malla(Geo):
	"""
		OBJETIVO:
			Desarrolla la malla para simulación numérica y almacena la
			ínformación de los nodos y elementos.

		ARGUMENTOS:
			- dom 	->	Dominio o figura a mallar.
			- Eltype ->	Tipo de elemento.
	"""
	def __init__(self, dom, Eltype = 'Cuad'):
		pass

if __name__ == '__main__':
	Malla()
