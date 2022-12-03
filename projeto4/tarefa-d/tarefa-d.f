      implicit real * 8 (a-h, o-z)
      parameter(n = 1000)
      parameter(t_total = 100)

      parameter(pi = acos(-1.0d0))

      parameter(gamma = 0.5d0)
      parameter(OM = 0.66)
      
      parameter(f01 = 0.5d0)
      parameter(f02 = 1.2d0)


      open(10, file="saida-tarefa-d3.dat")
      open(11, file="saida-tarefa-d3-3.dat")

      dt = t_total / n 
 
      t = 0d0

      tt = pi / 6 - 0.03 
      omg = 0.0d0

      omg1 = omg
      tt1 = tt

      do i = 1, n
         
         t = t + dt
         
         tmp_omg = omg - sin(tt)*dt-gamma*omg*dt+f01*sin(OM*t)*dt
         tmp_tt = tt + tmp_omg*dt

         tmp_omg1 = omg1 - sin(tt1)*dt-gamma*omg1*dt+f02*sin(OM*t)*dt
         tmp_tt1 = tt1 + tmp_omg1*dt

         write(10, *) tmp_tt, tmp_omg
         write(11, *) tmp_tt1, tmp_omg1
         
         omg = tmp_omg
         tt = tmp_tt

         omg1 = tmp_omg1
         tt1 = tmp_tt1

      end do
      close(10)
      end
