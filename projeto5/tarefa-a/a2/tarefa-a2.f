      implicit real * 8 (a-h, o-z)

      parameter(n = 5475d0)  ! 15 anos
      parameter(total_time = 1d0)
      parameter(pi = acos(-1.0d0))
      parameter(n_year = 365d0)
      parameter(n_planets = 1) ! 9)

      dimension r(n_planets)

      r = (/0.39/) ! , 39.53/)
      dt = (total_time)/(n)

      print *, dt

      open(1, file="saida-tarefa-a2-mercurio.dat")
      open(2, file="saida-tarefa-a2-plutao.dat")
!     open(2, file="saida-tarefa-a2-venus.dat")
!     open(3, file="saida-tarefa-a2-terra.dat")
!     open(4, file="saida-tarefa-a2-marte.dat")
!     open(5, file="saida-tarefa-a2-jupiter.dat")
!     open(6, file="saida-tarefa-a2-saturno.dat")
!     open(7, file="saida-tarefa-a2-urano.dat")
!     open(8, file="saida-tarefa-a2-netuno.dat")

      do j = 1, n_planets

         x_prev = r(j)
         y_prev = 0d0

         vx = 0d0
         vy =  sqrt(2*pi)/r(j)

         x = x_prev             ! + vx * dt
         y = y_prev + vy * dt

         t = 0d0
         t_sum = 0d0
         t_prev = 0d0
         nCount = 0d0

!         open(10, file="saida-tarefa-a1.dat")
         i = 0d0
         do i = 1, n
            
            t = t + dt
            
            r(j) = sqrt(x**2 + y**2)
            GMs = (4*pi**2)/r(j)**3
            
            tmp_x = 2*x - x_prev - GMs * x * dt ** 2
            tmp_y = 2*y - y_prev - GMs * y * dt ** 2
            
            x_prev = x
            y_prev = y
            x = tmp_x
            y = tmp_y
            
            write(j, *) x, y
            if(y_prev * y < 0) then 
               
               t_sum = t_sum + (t - t_prev)
               
               sum = sum + abs(x)
               
               nCount = nCount + 1
               t_prev = t
               
            end if 
         end do
         close(j)

         a = sum/(nCount*1.0d0)
         c = abs(a - r(j))
         e = c/a
         T = 2 * (t_sum)/(nCount*1.0d0)
         
         print *, "Excentricidade: ", e
         print *, "T = ", T
         print *, "Periodo em dias = ", T * 365
         print *, "T^2/ r^3 =", T**2 / r(j)**3 
      end do

      end
      
