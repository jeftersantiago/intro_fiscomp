      implicit real * 8 (a-h, o-z)
      parameter(n = 500000)
      parameter(t_total = 100000)

      parameter(pi = acos(-1.0d0))
      parameter(gamma = 0.5d0)
      parameter(OM = 0.66d0)


      parameter(f01 = 0.5d0)
      parameter(f02 = 1.2d0)

!      dt = 0.03d0

      dt =  t_total / n

      t = 0d0
      tt = 0.2 - 0.03

      omg = 0.0d0

      open(unit=10, file="saida-poincare3.dat")

      j = 0
      do i = 1, n

         t = t + dt

         tmp_omg = omg - sin(tt)*dt-gamma*omg*dt+f02*sin(OM*t)*dt
         tmp_tt = tt + tmp_omg*dt

         do while(tmp_tt > pi)
            tmp_tt = tmp_tt - 2 * pi
         end do
         do while(tmp_tt < -pi)
            tmp_tt = tmp_tt + 2 * pi
         end do

         if (mod(OM*t, pi) < dt/2) then
            write(10, *) tmp_tt, tmp_omg
         end if

         omg = tmp_omg
         tt  = tmp_tt
      end do

      close(10)
      close(11)
      close(12)
      end
