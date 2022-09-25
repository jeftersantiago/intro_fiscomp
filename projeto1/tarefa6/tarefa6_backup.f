!     Calcula determinante pela definição
      parameter(nRow = 24, nCol = 5)
      dimension nPerm(nRow, nCol), nAuxPerm(nCol, nRow)
      parameter(nMatrix = 4)
      dimension rMatrix(nMatrix, nMatrix)

      open(10, file="permutacoes-n4.dat") 
      open(20, file="matriz-4x4.dat")

      read(10, *) nAuxPerm
      nPerm = transpose(nAuxPerm)
      
      read(20, *) rMatrix
      rMatrix = transpose(rMatrix)

      det = 0e0
      do i = 1, nRow 

         signal = nPerm(i, nCol)
         aux = 1e0
         do j = 1, nCol - 1
            aux = aux * rMatrix(j, nPerm(i, j))
         end do
         det = det + signal * aux

      end do

      write(*, *) "Determinante = ", det
      end
