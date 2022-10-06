!     Tarefa B - Cálcular <r> e <Δ2>
      parameter (n = 10)
      parameter (m = 10000)

      dimension walker(m, 2)
      dimension r(m)

      dimension iStep(2)    
      iStep(1) = -1
      iStep(2) = 1

      rMean = 0e0
      r2Mean  = 0e0

      rX = 0e0
      rY = 0e0

      rnd = rand(iseed)
      do i = 1, m
         nSteps = 0
         walker(i, 1) = 0
         walker(i, 2) = 0
         do j = 1, n
            k = rand() * 2
            k = int((k + 1) / 2) + 1
            l = rand() * 2
            l = int((l + 1) / 2) + 1
            walker(i, k) = walker(i, k) + iStep(l)
         end do
         rX = rX + walker(i, 1)
         rY = rY + walker(i, 2)
         r2Mean = r2Mean + walker(i, 1) ** 2 + walker(i, 2) ** 2
      end do 

      rX = rX / m
      rY = rY / m
      rMean = sqrt(rX**2 + rY**2)
      print *,"<r> = ", rMean

      r2Mean = r2Mean / m
      print *, "<r²> = ", r2Mean

      rDelta = r2Mean - rMean ** 2
      print *,"Δ2 = ", rDelta

      open(unit=10,file='saida-tarefa-c.dat')
      do i = 1, m
         write(10, *) walker(i, 1), walker(i, 2)
      end do
      close(10)
      end
