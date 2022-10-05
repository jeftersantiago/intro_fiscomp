!     Tarefa B - Cálcular <x> e <x²>
      parameter (n = 1000)
      parameter (m = 10000)

      parameter (nbin = 100)

      dimension nwalker(m)
      dimension istep(2)

      iStep(1) = -1
      iStep(2) = 1

      x = 0e0
      x2 = 0e0

      r = rand(iseed)
      do i = 1, m
         nSteps = 0
         do j = 1, n
            r = rand() * 2
!           i está no intervalo [1, 2]
            k = int((r + 1) / 2) + 1
!           Quantidade de passos dada por andarilho.
            nSteps = nSteps + iStep(k)
         end do
         nWalker(i) = nSteps
         x = x + nSteps
         x2 = x2 + nSteps ** 2
      end do

      xm = x / m
      x2m = x2 / m

      print *,"<x> =", xm
      print *,"<x²> =", x2m

      xmin = nWalker(1)
      xmax = xmin

      do i = 2, m
         if(nWalker(i) < xmin) then
            xmin = nWalker(i)
         end if
         if(nWalker(i) > xmax) then
            xmax = nWalker(i)
         end if
      end do

      print *, "min = ", xmin
      print *, "max = ", xmax

      dx =  (xmax - xmin) / nbin

      open(unit=10,file='saida-tarefa-b1.dat')
      do j = 1, nbin
         nhist = 0
         infLim = xmin + (j - 1) * dx
         supLim = xmin + j * dx

         do i = 1, m
            if(nWalker(i) >= infLim .and. nWalker(i) < supLim) then
              nhist = nhist + 1
            end if
         end do

         write(10, *) supLim , nhist
      end do
      close(10)
      end
