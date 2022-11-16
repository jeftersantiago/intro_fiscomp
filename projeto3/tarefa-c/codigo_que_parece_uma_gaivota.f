!     Método de Newton-Raphson para cálculo de raízes
!     do polinomio f(x) = x³ - 3/2  x² - 3/2 x + 
      implicit real * 8 (a-h, o-z)
!     Numero de interacoes
      parameter(n = 6)
      parameter(n_roots = 3)
      dimension roots(n_roots)

      epsilon = 1.0e-16

      call srand(iseed)

      i = 1
      do while(i < n_roots + 1) 
         x0 =  rand() + x0 + 1 
         do while(abs(f(x0)) > epsilon)
            do j = 1, n
               xi = x0 - f(x0) / df(x0)
               if(abs(xi - x0) < epsilon) then
                  do k = 1, n_roots
                     if(xi .ne. roots(k)) then
                        roots(i) = xi
                        i = i + 1
                        goto 10
                     end if
                  end do
               end if
               x0 = xi
            end do
 10      end do
      end do

      do i = 1, n_roots
         print *, roots(i)
      end do 
      end

      function f(x)
      implicit real * 8 (a-h, o-z)
      f = x**3 - 1.5 * x**2 - 1.5 * x + 1
      return
      end

      function df(x)
      implicit real * 8 (a-h, o-z)
      df = 3*x**2 - 3*x - 1.5
      return
      end
