      external gamma

      open(unit=10, file="dimensoes-esferas.dat")

      R = 1.0e0
      PI = acos(-1.0e0)
      do n = 2, 20
!     V(d) = [π^(d/2) / Γ(d/2 + 1)] * R^(d)
         Volume = (PI ** ((n * 1.0e0)/ 2) / gamma(n)) * R ** (n)
         write(10, *) Volume
      end do 

      close(10)
      end

      function gamma(n)
      aux = 1e0
      gamma = 1e0

      ! (d/2 + 1)
      x = (1.0e0 * n) / 2.0e0 + 1.0e0

      do while(x >= 0e0)
         call baseCases(x, aux)
         if(x > 1) then
            gamma = gamma * (x - 1)
         end if
         x = x - 1
         gamma = gamma * aux
      end do
      end

      subroutine baseCases(x, aux)
      if(x == 0e0) then
         aux = 1
      else if (x == 0.5e0) then
         aux = sqrt(acos(-1e0))
      end if
      return
      end
