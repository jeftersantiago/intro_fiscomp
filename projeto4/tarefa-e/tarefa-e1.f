      implicit real * 8 (a-h, o-z)
      parameter(n = 50000)!10000)
      parameter(t_total = 1000)

      parameter(pi = acos(-1.0d0))
      parameter(gamma = 0.5d0)
      parameter(OM = 0.66d0)
      
      parameter(f01 = 0.5d0)
      parameter(f02 = 1.2d0)
      dt =  t_total / n 
      t = 0d0
      tt = 0.2
      tt1 = tt 
      omg = 0.0d0
      omg1 = omg
      open(unit=11, file="./graficos/saida-omega-theta1.dat")

      do i = 1, n
         t = t + dt

         tmp_omg = omg - sin(tt)*dt-gamma*omgd*dt+f01*sin(OM*t)*dt
         tmp_tt = tt + tmp_omg*dt

         tmp_omg1 = omg1 - sin(tt1)*dt-gamma*omg1*dt+f02*sin(OM*t)*dt
         tmp_tt1 = tt1 + tmp_omg1*dt

         do while(tmp_tt1 > pi)
            tmp_tt1 = tmp_tt1 - 2 * pi
         end do
         do while(tmp_tt1 < -pi)
            tmp_tt1 = tmp_tt1 + 2 * pi
         end do
         
         write(11, *) tmp_tt1,  tmp_omg1

         omg = tmp_omg
         tt = tmp_tt

         omg1 = tmp_omg1
         tt1  = tmp_tt1
      end do
      close(10)
      end
