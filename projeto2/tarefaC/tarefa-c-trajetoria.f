!     Tarefa B - Cálcular <r> e <Δ2>
      parameter (n = 10000)
      parameter (m = 8)

      dimension position(m,n,n)
      
      dimension walker(m, 2)
      dimension r(m)

      dimension iStep(2)    
      iStep(1) = -1
      iStep(2) = 1

      rMean = 0e0
      r2Mean  = 0e0
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
            position(i, j, 2) = walker(i, 1)
            position(i, j, 3) = walker(i, 2)

         end do
      end do 

      open(unit=10,file='saida-tarefa-c-traj1.dat')
      do i = 1, n
         write(10, *) position(1, i, 2), position(1, i, 3)
      end do
      close(10)
      open(unit=11,file='saida-tarefa-c-traj2.dat')
      do i = 1, n
         write(11, *) position(2, i, 2), position(2, i, 3)
      end do
      close(11)
      open(unit=12,file='saida-tarefa-c-traj3.dat')
      do i = 1, n
         write(12, *) position(3, i, 2), position(3, i, 3)
      end do
      close(12)
      open(unit=13,file='saida-tarefa-c-traj4.dat')
      do i = 1, n
         write(13, *) position(4, i, 2), position(4, i, 3)
      end do
      close(13)
      open(unit=14,file='saida-tarefa-c-traj5.dat')
      do i = 1, n
         write(14, *) position(5, i, 2), position(5, i, 3)
      end do
      close(14)
      open(unit=15,file='saida-tarefa-c-traj6.dat')
      do i = 1, n
         write(15, *) position(6, i, 2), position(6, i, 3)
      end do
      close(15)
      open(unit=16,file='saida-tarefa-c-traj7.dat')
      do i = 1, n
         write(16, *) position(7, i, 2), position(7, i, 3)
      end do
      close(17)
      open(unit=17,file='saida-tarefa-c-traj8.dat')
      do i = 1, n
         write(17, *) position(8, i, 2), position(8, i, 3)
      end do
      close(17)
      end
