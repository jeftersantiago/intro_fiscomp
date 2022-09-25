c     Tarefa 01
c     Calcula área e volume de um tórus a partir de raios dados.

      write(*,*) "Digite os valores dos raios (interno, externo):"
      read(*,*) ri, re
      pi = acos(-1e0)

      aArea = 4.e0 * pi ** 2 * re * ri 
      aVolume = (pi * ri ** 2) * (2 * pi * re)

      write(*,*) "Area = ", aArea
      write(*,*) "Volume = ", aVolume

      end
