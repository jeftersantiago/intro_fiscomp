!     Tarefa 4
!     Cálculo da série já implementado.
      
      real*4 x
      real*4 res
!     write(*,*) "Informe x"
!     read(*,*) x
!     write(*,*)  cos_series(x, 4)
      integer*4 eprec
!     Para eprec = 10^n o número de loops é n
      eprec = 5
      res = cos_series(3.14159265, eprec)
      write(*,*) res
      end
      real function cos_series(x, precision)
      integer precision
      real cos
      do i = 1, precision
!     Implementação da série de potências
!     cos(x) = 1 - x²/2! + x⁴/3! - x⁶/6! + ···
!     cos(x) = (-1)^n * (x^(2n))/(2n)!, n de 0 a ∞
         cos = cos + (-1)**(i) * x**(2 * i) / factorial(2*i)
         write(*,*) cos
      end do
      return
      end

      recursive function factorial (n) result (res)
      if(n .eq. 1) then
         res = 1
      else
         res = n * factorial(n-1)
      end if
      end function factorial 
