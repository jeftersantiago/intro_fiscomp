      implicit real * 8 (a-h, o-z)
      parameter(n = 1000)
      parameter(tt = 10)
      parameter(s = 9.8d0)
      parameter(p = 9.9d0)
      
      dt = tt/n

      x = sqrt(2*s/p)

      tt1 = (2 * pi) / 48d0
      omg1 = 0.0d0

!      open(10, file="saida-tarefa-b.dat")

!      close(10)

      end

      function f(tt0, tt)
      implicit real * 8 (a-h, o-z)
      pi = acos(-1.d0)
      f = 1.0d0 / (cos(tt) - cos(tt0))  
      return
      end

