      implicit real * 8 (a-h, o-z)
      parameter(n = 3000)
      parameter(t_total = 100)

      parameter(pi = acos(-1.0d0))

      parameter(gamma = 0.5d0)
      parameter(OM = 0.667)
      
      parameter(f01 = 0.5d0)
      parameter(f02 = 1.2d0)

      open(10, file="saida-tarefa-b4-theta.dat")
      open(11, file="saida-tarefa-b4-omega.dat")

      dt = t_total / n 
      print *, dt
      t = 0d0

      tt = pi / 6
      tt1 = tt 
      tt2 = tt

      omg = 0.0d0
      omg1 = omg
      omg2 = omg
      do i = 1, n
         
         t = t + dt

         tmp_omg = omg - sin(tt)*dt-gamma*omg*dt
         tmp_tt = tt + tmp_omg*dt 

         tmp_omg1 = omg1 - sin(tt1)*dt-gamma*omg1*dt+f01*sin(OM*t)*dt
         tmp_tt1 = tt1 + tmp_omg1*dt

         tmp_omg2 = omg2 - sin(tt2)*dt-gamma*omg2*dt+f02*sin(OM*t)*dt
         tmp_tt2 = tt2 + tmp_omg2*dt


         write(10, *) t, tmp_tt, tmp_tt1,tmp_tt2
         write(11, *) t, tmp_omg, tmp_omg1, tmp_omg2

         omg = tmp_omg
         tt = tmp_tt

         omg1 = tmp_omg1
         tt1 = tmp_tt1

         omg2 = tmp_omg2
         tt2 = tmp_tt2

      end do
      close(10)
      close(11)
      end
