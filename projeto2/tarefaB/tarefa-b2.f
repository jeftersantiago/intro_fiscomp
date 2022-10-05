!     Tarefa B - Cálcular <x> e <x²>
!     Número de passos
      parameter (n = 1000)
!     Quantidade de andarilhos
      parameter (m = 10000)

      parameter (nbin = 30)

      dimension nwalker(m)

      dimension iStep(2)    

      iStep(1) = -1
      iStep(2) = 1

      write(*,*) "p = "
      read(*, *) p 

      x = 0e0
      x2 = 0e0

      do i = 1, m
         nSteps = 0
         r = rand(iseed)
         do j = 1, n
            r = rand() * int((1 / p))
!     i está no intervalo [1, int(1/p)]
            k = int((r + 1) / int((1 / p))) + 1
!     Quantidade de passos dada por andarilho.
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


      ! Gerando o histograma.

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
      
      dx =  (xmax - xmin) / nbin

      open(unit=10,file='saida-tarefa-b2.dat')
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
