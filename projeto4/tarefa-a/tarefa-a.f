      implicit real * 8 (a-h, o-z)

      parameter(n = 1000)
      parameter(tt = 100)
      parameter(pi = acos(-1.0d0))

!     Gravidade
      parameter(p = 9.8d0)
!     Comprimento
      parameter(s = 9.8d0)
!     p/s = 1.0d0

      dt = (tt * 1.0d0) / (n * 1.0d0)

      tt1 = (2 * pi) / 48d0
      omg1 = 0.0d0
      e1 = - p * cos(tt1)

      tt2 = tt1 
      omg2 = omg1
      e2 = e1

      open(10, file="saida-oscilacoes.dat")
      open(11, file="saida-energias.dat")

      do i = 1, n

         t = t + dt

!     Metodo de Euler
         tmp_omg1 = omg1 - tt1 * dt
         tmp_tt1 = tt1 + omg1 * dt

         omg1 = tmp_omg1
         tt1 = tmp_tt1
         
!     Metodo de Euler-Cromer
         tmp_omg2 = omg2 - tt2 * dt
         tmp_tt2 = tt2 + tmp_omg2 * dt
         
         omg2 = tmp_omg2
         tt2 = tmp_tt2

!     Energia do sistema

         e1 = (1.0d0/2.0d0) * s **2 * omg1**2 + p * s * cos(tt1)
         e2 = (1.0d0/2.0d0) * s **2 * omg2**2 + p * s * cos(tt2)

         write(10, *) t, omg1, tmp_tt1, omg2, tmp_tt2
         write(11, *) t, e1, e2

      end do
      close(10)
      close(11)
      end
