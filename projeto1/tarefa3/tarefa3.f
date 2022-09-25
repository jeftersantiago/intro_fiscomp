!     Tarefa 03
      parameter(N = 100)
      dimension rList(N)

      in = 10 ! unidade para arquivo de entrada.
      iout = 20 ! unidade para arquvio de saída
      open(unit=in, file="input-tarefa3.dat")
      open(unit=iout, file="output-tarefa3.dat")

      write(*,*) "Quantidade de números a serem ordenados (M ≤ 100):"
      read(*,*) M

!     Lê o arquivo com os N números aleatórios
      read(in, *) rList
      
!     Implementacao do algoritmo bubble sort
      do i = 1, M 
         do j = N - i, 2, -1
            if(rList(j) < rList(j-1)) then
               tmp = rList(j)
               rList(j) = rList(j-1)
               rList(j-1) = tmp
            end if
         end do 
      end do 


!     Salva no arquivo "output-tarefa3.dat"
      do i = 1, M
         write(iout, *) rList(i)
      end do
      write(iout, 999) M
 999  format(i2 , ' numeros.')

      close(in)
      close(iout)

      end
