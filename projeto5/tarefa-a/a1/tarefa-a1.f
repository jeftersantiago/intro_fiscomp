!     
      implicit real * 8 (a-h, o-z)

      parameter(n = 365)
      parameter(t = 1)
      parameter(pi = acos(-1.0d0))
      

      dt = (t*1.0d0)/(n*1.0d0)
      x = 1.0d0
      y = 0.0d0
      r = 1.d0                  ! sqrt(x**2 + y**2)
      vx = 0.0d0
      vy = 2*pi

      
      open(10, file="saida-tarefa-a1.dat")
      do i = 1, n
!         print *, "srt(x²+y²) = ", sqrt(x**2 + y**2)

         ratio = (4*pi**2)/r**3

         tmp_vx = vx - ratio*x*dt
         tmp_vy = vy - ratio*y*dt

         vx = tmp_vx
         vy = tmp_vy

!     Euler-Cromer

         tmp_x = x + vx * dt
         tmp_y = y + vy * dt
         print *, tmp_y

         write(10, *) tmp_x, tmp_y!  , cos(atan(tmp_x/tmp_y))
         x = tmp_x
         y = tmp_y

      end do
      close(10)
      end
      
