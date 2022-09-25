!     Tarefa 4
!     Implementação da série de potências
!     cos(x) = (-1)^n * (x^(2n))/(2n)!

      double precision eprecd 
      double precision cossd
      double precision accd
      double precision tmpd
      double precision xd
      double precision axd

      eprecd = 1e-16
      accd = eprecd * 2

      eprec = 1e-5
      acc = eprec * 2

      ifat = 1

      coss = 1e0
      tmp = coss

      write(*,*) "Informe x em radianos:"
      read(*,*) xd

      x = xd
      ax = x**2

      i = 1
      do while (eprec  <=  acc)
         ifat = (i * (i + 1))
        
         tmp = tmp * (-1) * ax / ifat
         coss = coss + tmp

         acc = abs(tmp) - eprec

         i = i+2
      end do

      cossd = 1d0
      tmpd = cossd

      axd = xd**2
      ifat = 1
      i = 1
      
      do while (eprecd  <=  accd)
         ifat = (i * (i + 1))
        
         tmpd = tmpd * (-1) * axd / ifat
         cossd = cossd + tmpd

         accd = abs(tmpd) - eprecd

         i = i+2
      end do

      write(*,*) "=================="
      write(*,*) "=   Resultados   ="
      write(*,*) "=================="

      write(*,*) "Precisão simples"
      write(*,*) "cos(x) = ", coss

      errs = abs(cos(x)) - abs(coss)
      write(*,*) "Erro: " , errs

      write(*,*) "--------------"
 
      write(*,*) "Precisão dupla"
      write(*,*) "cos(x) = ", cossd

      errd = abs(dcos(xd)) - abs(cossd)
      write(*,*) "Erro: " , errs
      
      end
