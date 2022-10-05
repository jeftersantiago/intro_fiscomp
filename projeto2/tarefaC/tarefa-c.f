!     Tarefa B - Cálcular <x> e <x²>
      parameter (n = 1000000)
      parameter (m = 1000)

      dimension nWalker(m, 2)
      dimension r(m)

      dimension iStep(2)    
      iStep(1) = -1
      iStep(2) = 1

      rnd = rand(iseed)
      do i = 1, m
         nSteps = 0
         nWalker(i, 1) = 0
         nWalker(i, 2) = 0
         do j = 1, n
            k = rand() * 2
            k = int((k + 1) / 2) + 1
            l = rand() * 2
            l = int((l + 1) / 2) + 1
            nWalker(i, k) = nWalker(i, k) + iStep(l)
         end do
         r2 = nWalker(i,1) ** 2 + nWalker(i, 2) ** 2
         r(i) = sqrt(r2)
         rMean = rMean + r(i)
         r2Mean = r2Mean + r(i)**2
      end do 

      rMean = rMean / m
      r2Mean = r2Mean / m

      rDelta = r2Mean - rMean ** 2

      print *,"<r> = ", rMean
      print *,"Δ² = ", rDelta

      open(unit=10,file='saida-tarefa-n.dat')
      do i = 1, m
         write(10, *) nWalker(i, 1), nWalker(i, 2)
      end do
      close(10)
      end
