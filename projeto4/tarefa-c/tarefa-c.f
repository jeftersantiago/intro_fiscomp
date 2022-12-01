      implicit real * 8 (a-h, o-z)
      parameter(n = 1000)
      parameter(t_total = 70)

      parameter(pi = acos(-1.0d0))

      parameter(gamma = 0.5d0)
      parameter(OM = 0.66)
      
      parameter(f01 = 0.5d0)
      parameter(f02 = 1.2d0)

      open(10, file="saida-tarefa-c.dat")

      dt = t_total / n 
 
      t = 0d0

      tt2 = 0.222d0 ! 7 * pi / 18
      tt1 = 0.221d0 !tt2 - 0.001

      omg1 = 0.0d0
      omg2 = omg

      f =   0.5d0  ! 1.2d0 
      do i = 1, n
         
         t = t + dt
         
         tmp_omg1 = omg1 - sin(tt1)*dt-gamma*omg1*dt+f*sin(OM*t)*dt
         tmp_tt1 = tt1 + tmp_omg1*dt

         tmp_omg2 = omg2 - sin(tt2)*dt-gamma*omg2*dt+f*sin(OM*t)*dt
         tmp_tt2 = tt2 + tmp_omg2*dt
         
         write(10, *) t, log(abs(tt2 - tt1))
        
         omg1 = tmp_omg1
         tt1 = tmp_tt1

         omg2 = tmp_omg2
         tt2 = tmp_tt2

      end do
      close(10)
      end
