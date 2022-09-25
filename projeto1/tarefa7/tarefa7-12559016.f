!     Cálcula as soluções de um sistema linear
!     AX = Y com A e Y dados.
      parameter(nRow = 720, nCol = 7)
      parameter(nMatrix = 6)

      dimension nPerm(nRow, nCol), nAuxPerm(nCol, nRow)
      dimension rMatrix(nMatrix, nMatrix), auxMatrix(nMatrix, nMatrix)

      dimension Y(1:nMatrix)

      open(30, file='y-6x6.dat')
      read(30, *) Y 
      close(30)

      open(10, file="permutacoes-n6.dat") 
      open(20, file="matriz-6x6.dat")

      read(10, *) nAuxPerm
      nPerm = transpose(nAuxPerm)
      
      read(20, *) rMatrix
      rMatrix = transpose(rMatrix)

      detA = 0e0
      call det(nRow, nCol,nPerm, nMatrix, rMatrix, detA)

      write(*, *) "Matriz solução X: " 
      do j =  1, nMatrix
         auxMatrix = rMatrix
         do i = 1, nMatrix
            auxMatrix(i, j) = Y(i)
         end do

        detXj = 0e0
        call det(nRow,nCol,nPerm,nMatrix,auxMatrix,detXj)
        write(*, *) detXj / detA

      end do

      close(10)
      close(20)
      end

      subroutine det(nRow,nCol,nPerm,nMatrix,rMatrix, detx)
      dimension nPerm(nRow, nCol), nAuxPerm(nCol, nRow)
      dimension rMatrix(nMatrix, nMatrix)
      
      do i = 1, nRow 
         signal = nPerm(i, nCol)
         aux = 1e0
         do j = 1, nCol - 1
            aux = aux * rMatrix(j, nPerm(i, j))
         end do
         detx = detx + signal * aux
      end do
      return
      end
