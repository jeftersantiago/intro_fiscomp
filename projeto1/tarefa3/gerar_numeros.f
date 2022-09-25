      write(*,*) "Quantidade N (<= 1000)"
      read(*,*) N

!     Gera arquivo com N números aleatórios.
      open(unit=10, file="input-tarefa3.dat")
      r = 0
      do i = 1, N
         call random_number(r)
         write(10, *) r
      end do
      close(10)
      end
