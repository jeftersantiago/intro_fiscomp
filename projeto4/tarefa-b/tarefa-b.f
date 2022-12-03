      implicit real * 8 (a-h, o-z)
      parameter(n = 3000)
      parameter(t_total = 1000)

      parameter(pi = acos(-1.0d0))

      parameter(n_thetas = 4)
      parameter(e = 0.1d-5)

      dt = t_total/n
!     print *, dt

      open(10, file="saida-tarefa-b.dat")
!     Valores de theta usados
      open(11, file="entrada-tarefa-b2.dat")

      do k = 1, n_thetas
         read(11, *) tt0
         
!     Metodo de Euler-Cromer
         t = 0
         tt = tt0
         omg = 0.0d0
         count = 0
         do i = 1, n

            t = t + dt

            tmp_omg = omg - sin(tt) * dt
            tmp_tt = tt + tmp_omg * dt

            if(tmp_tt * tt < 0) then
               count = count + 1
            end if

            omg = tmp_omg
            tt = tmp_tt

         end do
         T = (2 * t) / count
         
!        Metodo de Boole
         h = (2 * tt0)/n
         do i = 0, (n/4) - 1
            
            tt = - tt0 + 2*i*h + e
            
            f0 = f(tt, tt0) 
            f1 = f(tt + h, tt0)
            f2 = f(tt + 2*h, tt0)
            f3 = f(tt + 3*h, tt0) 
            f4 = f(tt + 4*h, tt0)
            
            sum = sum + (7*f0+32*f1+12*f2+32*f3+7*f4)
         end do

         sum = sum*(2*h/45)
         sum = sqrt(2d0) * sum + 2 * sqrt(2d0) * sqrt(e/sin(tt0))
         
         analitico = 2 * pi * (1 + tt0**2/16)
         print *, tt0, T, sum, analitico
         write(10, *) tt0, T, sum, analitico
      end do

      close(10)
      close(11)
      end

      function f(tt, tt0)
      implicit real * 8 (a-h, o-z)
      pi = acos(-1.d0)
      f = 1.0d0 / sqrt(cos(tt) - cos(tt0))  
      return
      end
