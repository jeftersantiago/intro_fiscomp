      implicit real * 8 (a-h, o-z)
      parameter(n = 1000)
      parameter(t_total = 20)

      parameter(s = 9.8d0)
      parameter(p = 9.9d0)
      parameter(gamma = 0.5d0)
      parameter(pi = acos(-1.0d0))

      dt = t_total/n
      tt = 7 * pi / 18 
      open(10, file="saida-tarefa-b3.dat")
!      open(11, file="entrada-tarefa-b2.dat")
      t = 0
      omg = 0.0d0
      do i = 1, n
         
         t = t + dt
         
         tmp_omg = omg - sin(tt) * dt - gamma*omg*dt
         tmp_tt = tt + tmp_omg * dt

         omg = tmp_omg
         tt = tmp_tt
         write(10, *) t, tmp_tt

      end do
      close(10)
      end
