      implicit real * 8 (a-h, o-z)
      parameter(n = 1000)
      parameter(t_total = 70)

      parameter(pi = acos(-1.0d0))

      parameter(gamma = 0.5d0)
      parameter(OM = 0.66)
      
      parameter(f01 = 0.5d0)
      parameter(f02 = 1.2d0)

      open(10, file="saida-tarefa-d.dat")

      dt = t_total / n 
 
      t = 0d0

      tt = pi / 6 + 0.03 
      omg = 0.0d0

      do i = 1, n
         
         t = t + dt
         
         tmp_omg = omg - sin(tt)*dt-gamma*omg*dt+f02*sin(OM*t)*dt
         tmp_tt = tt + tmp_omg*dt

         write(10, *) tmp_omg, tmp_tt
         
         omg = tmp_omg
         tt = tmp_tt

         omg = tmp_omg
         tt = tmp_tt

      end do
      close(10)
      end
