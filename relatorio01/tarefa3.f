!     Tarefa 03
!     Cria uma lista de N números aleatórios
!     armazena essa lista num arquivo
!     e ordena os M primeiros números dessa lista.
      real*4 numbers(1:1000)

      in = 10 ! unidade para arquivo de entrada.
      iout = 20 ! unidade para arquvio de saída

      write(*,*) "Quantidade de números aleatórios (N<=1000):"
      read(*,*) N

      write(*,*) "Quantidade de números a serem ordenados (M<=1000):"
      read(*,*) M

      if(N .gt. 1000 .or. M .gt. N) then
         write(*,*) "Inputs inválidos. Programa encerrado."
         stop
      end if

      ! Gera arquivo com N números aleatórios.
      call generate_file(N)

      ! Lê o arquivo com os N números aleatórios
      ! e armazena os M primeiros números no vetor numbers.
      open(in, file="in_tarefa3.dat")
      do i = 1, M
         read(in, *) numbers(i)
      end do
      close(in)

!     Implementação do algoritmo insertion sort.
      do i = 1, M
         j = i
         do while (j .gt. 0 .and. (numbers(j) .lt. numbers(j-1)))
            temp = numbers(j)
            numbers(j) = numbers(j-1)
            numbers(j-1) = temp
            j = j - 1
         end do
      end do

      write(*,*) "Números ordenados."
      open(iout, file="out_tarefa3.dat")
      do i = 1, M
         write(iout,*) numbers(i)
      end do
      write(iout,*) M, "Números."
      close(iout)
      end

!     Gera o arquivo "in_tarefa3.dat" com N números aleatórios.
      subroutine generate_file(N)
      in = 10 ! Arquivo de entrada
      open(in, file='in_tarefa3.dat')
      r = 0
      do i = 1, N
         call random_number(r)
         write(in, *) r
      end do
      close(in)
      return
      end
