c     Lendo o arquivo '10put-tarefa3.dat'
      parameter(nRow = 6, nCol = 4)
      dimension iPerm(nRow,nCol), nAuxPerm(nCol, nRow)
      dimension nPerm(nRow, nCol + 1)
      dimension iauxPerm(nRow, nCol + 1)

      open(unit=10, file="input-n3.dat")
      open(unit=20, file="output-n4.dat")

      read(10, *) nAuxPerm
      iPerm = transpose(nAuxPerm)

c     Gera a matriz com n + 1 colunas (e a coluna para as paridades).
      i = 1
      do while(i < nCol)
         do j = 1, nRow
            nPerm(j, nCol + 1) = iPerm(j, nCol)
            nPerm(j, nCol) = nCol
            nPerm(j, i) = iPerm(j, i)
         end do
         i =  i + 1
      end do

!     Faz a troca das posições das colunas, calcula a paridade
!     e escreve no arquivo.

      do j = nCol + 1, 2 , -1

         if(j < nCol + 1) then 

            do i = 1, nRow
               iaux = nPerm(i, j)
               nPerm(i, j) = nPerm(i, j-1)
               nPerm(i, j-1) = iaux 
               
               nPerm(i, nCol + 1) =(-1)*nPerm(i, nCol+1)
            end do

         end if

         do k = 1, nRow
            write(20,*) (nPerm(k,l), l=1, nCol + 1)
         end do

      end do

      close(10)
      close(20)
      end
