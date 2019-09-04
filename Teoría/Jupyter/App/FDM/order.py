from IPython.display import HTML, display
import numpy as np

class Desarrollo():
    """
        Desarrolla el orden 'n' de la diferencia finita progresiva y regresiva.
    """
    def __init__(self, n, progresiva=True):
        if progresiva:
            res = self.progresiva(n)
            var = '\Delta'
        else:
            res = self.regresiva(n)
            var = '\nabla'
        self.imprimir(res[n-1], n, var)
    def imprimir(self, res, n, var):
        texto = '$' + var + '^{' + str(n) + '}y_k ='
        suma = -1
        for i in res:
            suma += 1
            if res[i] > 0 and suma >0:
                texto += '+'
            if res[i] != 1 and res[i] != -1:
                texto += str(res[i])
            elif res[i] == -1:
                texto += '-'
            if i == 0:
                texto += 'y_k'
            else:
                texto += 'y_{k+' + str(i) + '}'
        texto += '$'
        display(HTML(texto))
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
    n = 2
    Desarrollo(n, True)