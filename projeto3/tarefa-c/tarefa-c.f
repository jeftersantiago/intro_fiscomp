!     Método de Newton-Raphson para cálculo de raízes
!     do polinomio f(x) = x³ - 3/2  x² - 3/2 x + 
      implicit real * 8 (a-h, o-z)
!     Numero de interacoes
      parameter(n = 6)
      parameter(n_roots = 3)
      dimension roots(n_roots)
      parameter(epsilon = 1.0e-16)

      x0 = -10.d0
      xf =  10.d0
      h = 0.1d0


      p = 2 * epsilon
!     NEWTON-RAPHSON
      
      xi = 0.10d0
      i = 1
      do while(epsilon <= p .and. i <= n)
         xnew = xi - f(xi)/df(xi)
         p = abs(xnew - xi)
         xi = xnew
         i = i + 1
         print *, xnew
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
