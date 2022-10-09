!     Tarefa B - Cálcular <r> e <Δ2>
      parameter (m = 1000)

      dimension walker(m, 2)
      dimension r(m)

      dimension iStep(2)

      write(*, *) "N"
      read(*, *) n

      iStep(1) = -1
      iStep(2) = 1

      rMean = 0e0
      r2Mean  = 0e0

      rX = 0e0
      rY = 0e0

      rnd = rand(iseed)
      open(unit=10,file='saida-tarefa-c.dat')
      do i = 1, m

         walker(i, 1) = 0
         walker(i, 2) = 0

         do j = 1, n
            k = rand() * 2
            k = int((k + 1) / 2) + 1
            l = rand() * 2
            l = int((l + 1) / 2) + 1
            walker(i, k) = walker(i, k) + iStep(l)
         end do

         write(10, *) walker(i, 1), walker(i, 2)

         rX = rX + walker(i, 1)
         rY = rY + walker(i, 2)
         r2Mean = r2Mean + walker(i, 1) ** 2  + walker(i, 2) ** 2

      end do
      close(10)

      rMean = sqrt(rX**2 + rY**2) / m
      print *,"<r> = ", rMean

      r2Mean = r2Mean / m
      rDelta = r2Mean - rMean**2 
      print *,"Δ2 = ", rDelta
      end
