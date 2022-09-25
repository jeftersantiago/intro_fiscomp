!     Tarefa 8 - Cálculo do volume de uma N-Esfera 
      write(*, *) "Informe a quantidade N de números aleatórios."
      read(*, *) n


      write(*, *) "Resultados"

      v2 = volume(n, 2)
      v3 = volume(n, 3)
      v4 = volume(n, 4)

      print *, "Para d = 2, Volume = ", v2
      print *, "Para d = 3, Volume = ", v3
      print *, "Para d = 4, Volume = ", v4

      end

!     n - número de iteracoes
      function volume(n, id)
      ni = 1
!     Para uma esfera de raio unitário
      r = 1
      do j = 1, n
         rtmp = 0e0
         raux = 0e0
         do i = 1, id
            call random_number(rtmp)
            raux = raux + rtmp ** 2
         end do
         raux = sqrt(raux)
         if(raux <= r) then
            ni = ni + 1
         end if 
      end do
      ni = ni - 1
!     V(d) = (2R)^d * (Ni)/N
      volume = (2 * r)** id * ((ni * 1e0)/ (n * 1e0)) 
      return
      end
