      implicit real * 8 (a-h, o-z)
      parameter(n = 500000)!10000)
      parameter(t_total = 100000)

      parameter(pi = acos(-1.0d0))
      parameter(gamma = 0.5d0)
      parameter(OM = 0.66d0)

      
      parameter(f01 = 0.5d0)
      parameter(f02 = 1.2d0)

!      dt = 0.03d0

      dt =  t_total / n 

      t = 0d0
      tt = 0.2
      tt1 = tt 

      omg = 0.0d0
      omg1 = omg

      open(unit=10, file="./graficos/saida-poincare1.dat")

      j = 0
      do i = 1, n

         t = t + dt
         tmp_omg1 = omg1 - sin(tt1)*dt-gamma*omg1*dt+f02*sin(OM*t)*dt
         tmp_tt1 = tt1 + tmp_omg1*dt

         do while(tmp_tt1 > pi)
            tmp_tt1 = tmp_tt1 - 2 * pi
         end do
         do while(tmp_tt1 < -pi)
            tmp_tt1 = tmp_tt1 + 2 * pi
         end do

         if (mod(OM*t, pi) < dt/2) then
            write(10, *) tmp_tt1, tmp_omg1
         end if 

!        if(abs(t - (j*pi)/OM) < dt/2.0) then
!           write(10, *) tmp_tt1, tmp_omg1
!           j =  j + 1
!        end if

         omg1 = tmp_omg1
         tt1  = tmp_tt1
      end do
      
      close(10)
      close(11)
      close(12)
      end
