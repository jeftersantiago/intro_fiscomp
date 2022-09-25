!     Tarefa 02
!     Dados 3 vetores (u, v, w) calcula o volume do paralelepipedo das arestas
!     definidas por u, v e w - v.
      dimension u(1:3), v(1:3), w(1:3)
      dimension aVec(1:3)
      write(*,*)"Digite as coordenadas de cada vetor"
      read(*,*) u(1), u(2), u(3) 
      read(*,*) v(1), v(2), v(3)
      read(*,*) w(1), w(2), w(3)
      w(1) = w(1) - v(1)
      w(2) = w(2) - v(2)
      w(3) = w(3) - v(3)

!     A = 2 ( A1 + A2 + A3)
      aVec(1) = (u(2)*v(3)-v(2)*u(3))
      aVec(2) = (v(1)*u(3)-u(1)*v(3))
      aVec(3) = (u(1)*v(2)-v(1)*u(2))

      a1 = aVec(1)**2 + aVec(2)**2 + aVec(3)**2
      a1 = sqrt(a1)
      
      a2 = (u(2)*w(3) - u(1)*w(2))**2 + (u(3)*w(1) - u(1)*w(3))**2
     +     + (u(1)*w(2) - u(2)*w(1))**2
      a2 = sqrt(a2)
     
      a3 = (v(2)*w(3)-v(3)*w(2))**2 + (v(3)*w(1)-v(1)*w(3))**2
     +     + (v(1)*w(2) - v(2)*w(1))**2
      a3 = sqrt(a3)

      area = 2 * (a1 + a2 + a3)
      write(*,*) "Area do paralelepipedo: ", area

      volume = aVec(1) * w(1) + aVec(2) * w(2) + aVec(3) * w(3)
      
      write(*,*) "Volume do paralelepipedo: ", abs(volume)
      end
      
