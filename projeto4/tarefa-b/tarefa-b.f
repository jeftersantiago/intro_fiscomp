      implicit real * 8 (a-h, o-z)
      parameter(n = 1000)
      parameter(t_total = 50)

      parameter(s = 9.8d0)
      parameter(p = 9.9d0)

      parameter(pi = acos(-1.0d0))
      
      dt = t_total/n

      tt = (2 * pi) / 48d0
      omg = 0.0d0

      open(10, file="saida-tarefa-b.dat")
      
!     Metodo de Euler-Cromer
      count = 0
      do i = 1, n

         t = t + dt

         tmp_omg = omg - sin(tt) * dt
         tmp_tt = tt + tmp_omg * dt

         if(tmp_tt * tt < 0) then
            count = count + 1
         end if

         omg = tmp_omg
         tt = tmp_tt
      end do

      T = (2 * t) / count
      print *, T
      close(10)

      end

      function f(tt, tt0)
      implicit real * 8 (a-h, o-z)
      pi = acos(-1.d0)
      f = 1.0d0 / (cos(tt) - cos(tt0))  
      return
      end

