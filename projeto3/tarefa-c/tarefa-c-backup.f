!     Método de Newton-Raphson para cálculo de raízes
!     do polinomio f(x) = x³ - 3/2  x² - 3/2 x + 
      implicit real * 8 (a-h, o-z)
!     Numero de interacoes
      parameter(n = 6)

      epsilon = 1.0e-16

      x0 = 3.5e16

      do while(abs(f(x0)) > epsilon)
         do j = 1, n
            xi = x0 - f(x0) / df(x0)
            if(abs(xi - x0) < epsilon) then
               print *, "Raíz = ", xi
               i = i + 1
               goto 10
            end if
            x0 = xi
         end do
 10   end do
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



      

