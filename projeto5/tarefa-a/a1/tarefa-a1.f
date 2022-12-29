      implicit real * 8 (a-h, o-z)

      parameter(n = 100000d0)  
      parameter(total_time = 250d0) ! anos
      parameter(pi = acos(-1.0d0))
      parameter(n_year = 365d0)
      parameter(n_planets = 9)

      dimension r(n_planets)

      r = (/0.39,0.72,1.00,1.52,5.20,9.24,19.19,30.06,39.53/)

      dt = (total_time)/(n)

      open(unit = 11, file="saida-tarefa-a1-mercurio.dat")
      open(unit = 12, file="saida-tarefa-a1-venus.dat")
      open(unit = 13, file="saida-tarefa-a1-terra.dat")
      open(unit = 14, file="saida-tarefa-a1-marte.dat")
      open(unit = 15, file="saida-tarefa-a1-jupiter.dat")
      open(unit = 16, file="saida-tarefa-a1-saturno.dat")
      open(unit = 17, file="saida-tarefa-a1-urano.dat")
      open(unit = 18, file="saida-tarefa-a1-netuno.dat")
      open(unit = 19, file="saida-tarefa-a1-plutao.dat")

      do j = 1, n_planets
         x_prev = r(j)
         y_prev = 0d0

         vx = 0d0
         vy = sqrt(4*pi**2/r(j))

         x = x_prev ! + vx * dt
         y = y_prev + vy * dt

         t = 0d0
         t_sum = 0d0
         t_prev = 0d0
         nCount = 0d0

         do i = 1, n
            t = t + dt
!            r(j) = sqrt(x**2 + y**2)

            GMs = (4*pi**2)/r(j)**3
            
            tmp_x = 2*x - x_prev - GMs * x * dt ** 2
            tmp_y = 2*y - y_prev - GMs * y * dt ** 2

            write(j + 10, *) x, y
            if(y_prev * y < 0) then 
               nCount = nCount + 1
               t_sum = t_sum + (t - t_prev)
               sum = sum + abs(x)
               t_prev = t
            end if 
            x_prev = x
            y_prev = y
            x = tmp_x
            y = tmp_y
         end do
         close(j)

         a = sum/(nCount*1.0d0)
         c = abs(a - r(j))
         e = c/a
         T = 2 * (t_sum)/(nCount*1.0d0)
        print *, "Excentricidade: ", e
!        print *, "T = ", T
!        print *, "Periodo em dias = ", T * 365
!        print *, "T^2/ r^3 =", T**2 / r(j)**3 
      end do
      end
      
