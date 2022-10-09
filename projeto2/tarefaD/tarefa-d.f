!     Tarefa D - Cálcular entropia de caminhantes aleatorios em duas dimensoes      
      parameter (m = 1000)
      parameter (n = 1000)

      dimension nWalker(m, 2)

      dimension iStep(2)

      iStep(1) = -1
      iStep(2) = 1

      rnd = rand(iseed)

      do j = 1, m
         nWalker(j, 1) = 0
         nWalker(j, 2) = 0
      end do

      open(unit=10,file='saida-tarefa-d.dat')
      do i = 1, n

         do j = 1, m
            k = rand() * 2
            k = int((k + 1) / 2) + 1
            l = rand() * 2
            l = int((l + 1) / 2) + 1
            nWalker(j, k) = nWalker(j, k) + iStep(l)
         end do


         ixmin = nWalker(1, 1)
         ixmax = ixmin
         iymin = nWalker(1, 2)
         iymax = iymin

         do j = 2, m
            if(nWalker(j, 1) < ixmin) then
               ixmin = nWalker(j, 1)
            end if
            if(nWalker(j, 1) > ixmax) then
               ixmax = nWalker(j, 1)
            end if
            if(nWalker(j, 2) < iymin) then
               iymin = nWalker(j, 2)
            end if
            if(nWalker(j, 2) > iymax) then
               iymax = nWalker(j, 2)
            end if
         end do

         entropy = 0e0
         isqLen = 5
         
         do ix = ixmin, ixmax, isqLen
            do iy = iymin, iymax, isqLen
               count = 0e0
               do j = 1, m
                  iposX = nWalker(j,1) 
                  iposY = nWalker(j,2) 
                  if(((iposX <= ix + isqLen) .and. (iposX >= ix)) .and. 
     $                 (iposY <= iy + isqLen .and. iposY >= iy)) then
                     count = count + 1
                  end if
               end do
               if(count .ne. 0) then
                  prob = count / m
                  entropy = entropy - prob * log(prob)
               end if
            end do
         end do
         write(10, *) i, entropy
      end do 
      close(10)
      end
