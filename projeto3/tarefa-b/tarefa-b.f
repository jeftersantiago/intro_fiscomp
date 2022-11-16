!     Cacula integral da funcao f(x) = exp(x/4)sin(pi x)
!     em [a, b] = [0, 1]
      implicit real * 8 (a-h, o-z)
      n = 12

      open(unit = 11, file="saida.dat")

      write(11, 3) 
 3    format(12(' '), 'N', 16(' '), 'h', 16(' '), 'Regra do Trapezio',
     $     9(' '), 'Regra de Simpson', 10(' '), 'Regra de Boole')

      f_int = f_integral(1.0d0) - f_integral(0.0d0)

      do j = 1, 10

         trap = 0.0d0
         simp = 0.0d0
         boole = 0.0d0

         h = 1.0d0 / n

         do i = 1, n, 2

            x = i * h

            f0 = f(x)
            f1_ = f(x - h)
            f1 = f(x + h)
           
            trap = trap + (h/2) * (f1_ + 2 * f0 + f1)
            simp = simp + (h/3) * (f1_ + 4 * f0 + f1)
         end do

         do i = 0, n-4, 4

            x = i * h

            f0 = f(x)
            f1 = f(x + h)
            f2 = f(x + 2*h)
            f3 = f(x + 3*h)
            f4 = f(x + 4*h)

            boole = boole + (7*f0+32*f1+12*f2+32*f3+7*f4)
         end do
         boole = boole * (2*h/45)

         err1 = abs(trap - f_int)
         err2 = abs(simp - f_int)
         err3 = abs(boole - f_int)

         write(11, *) n, h, err1, err2, err3

         n = 2*n
      end do
      
      write(11, *) "Valores exatos"
      write(11, 6) f_int, f_int, f_int
 6    format(28(' '), d25.18, d25.18, d25.18)

      close(11)
      end

      function f(x)
      implicit real * 8 (a-h, o-z)
      f = exp(x / 4) * sin(acos(-1.0d0) * x)
      return
      end

      function f_integral(x)
      implicit real * 8 (a-h, o-z)
      pi = acos(-1.d0)
      f_integral = 4*exp(x/4)*(sin(pi*x)-4*pi*cos(pi*x))/(1+16*pi**2)
      return
      end 


      
