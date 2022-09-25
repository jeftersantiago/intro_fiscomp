C     Tarefa1: Cálcular a média de um número para um N
      read(*, *) N
      sum1 = 0.0e0
      sum2 = 0.0e0
      sum3 = 0.0e0
      sum4 = 0.0e0

      x =rand(iseed)
      do i = 1, N
         x = rand()
         sum1 = sum1 + x
         sum2 = sum2 + x**2
         sum3 = sum3 + x**3
         sum4 = sum4 + x**4
      end do

      sum1 = sum1 / N
      sum2 = sum2 / N
      sum3 = sum3 / N
      sum4 = sum4 / N

      write(*, *) "<x¹> = ", sum1
      write(*, *) "<x²> = ", sum2
      write(*, *) "<x³> = ", sum3
      write(*, *) "<x⁴> = ", sum4

      end
