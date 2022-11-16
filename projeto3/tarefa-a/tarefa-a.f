!     Cálculo das derivadas de uma função f(x)
      implicit real*8 (a-h, o-z)
      parameter (n = 14)
      dimension h(n)
      h = (/5.0e-1, 2.0e-1, 1.0e-1, 5.0e-2, 1.0e-2, 5.0e-3, 1.0e-3,
     $     5.e-4, 1.0e-4, 5.0e-5, 1.0e-5, 1.0e-6, 1.0e-7, 1.0e-8/)

      x = 0.5d0

      df = 3*sin(x/2)*sinh(3*x)+(0.5)*cos(x/2)*cosh(3*x)
      df2 = 3*sinh(3*x)*cos(x/2)+(8.75)*cosh(3*x)*sin(x/2)
      df3 = (0.125)*(198*sinh(3*x)*sin(x/2)+107*cosh(3*x)*cos(x/2)) 

      open(unit = 10, file="saida.dat")

      do i = 1, n

         fr = f(x+h(i))
         fl = f(x-h(i))

         fr2 = f(x + 2*h(i))
         fl2 = f(x - 2*h(i))

         df_r = (fr-f(x))/h(i)
         df_l = (f(x)-fl)/h(i)
         df_sm3 = (fr-fl)/(2*h(i))

         df_sm5 = (fl2 + 8*(fr-fl) - fr2)/(12*h(i))

         df2_sm5=(-fl2-fr2+16*(fr+fl)-30*f(x))/(12*h(i)**2)

         df3_asm5 = (fr2-fl2+2*(fl-fr))/(2*h(i)**3)

         err_r = abs(df - df_r)
         err_l = abs(df - df_l)
         err_sm3 = abs(df - df_sm3)
         err_sm5 = abs(df - df_sm5)
         err_asm5 = abs(df2 - df2_sm5)
         err2_asm5  = abs(df3 - df3_asm5)

         write(10, *) h(i), err_sm3, err_r, err_l, err_sm5, err_asm5,
     $        err2_asm5
      end do

      write(10, *) "Valores exatos", df, df, df, df, df2, df3
      close(10)
      end

      function f(x)
      implicit real * 8 (a-h, o-z)
      f = cosh(3 * x) * sin(x / 2)
      return 
      end
