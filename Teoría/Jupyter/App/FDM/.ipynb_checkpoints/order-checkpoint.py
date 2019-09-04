from IPython.display import HTML, display
import numpy as np

class Desarollo():
    """
        Desarrolla el orden 'n' de la diferencia finita progresiva y regresiva.
    """
    def __init__(self, n, prog=True):
        if prog:
            res = self.progresiva(n)
        else:
            res = self.regresiva(n)
        self.imprimir(res[n-1], n)
    def imprimir(self, res, n):
        pass
    def progresiva(self, n):
        res = {
            'Etapas':{
                -1:{
                    0:1
                }
            }
        }
        for i in range(n):
            res['Etapas'][i] = {}
            for c in res['Etapas'][i-1]:
                if c in res['Etapas'][i]:
                    res['Etapas'][i][c] += (-1)*res['Etapas'][i-1][c]
                else:
                    res['Etapas'][i][c] = (-1)*res['Etapas'][i-1][c]
                if c+1 in res['Etapas'][i-1]:
                    res['Etapas'][i][c+1] = res['Etapas'][i-1][c]
                else:
                    res['Etapas'][c][c+1] = 1
        return res['Etapas']
    def regresiva(self, n):
        pass

if __name__ == '__main__':
    n = 4
    Desarollo(n, True)