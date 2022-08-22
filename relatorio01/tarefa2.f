!     Tarefa 02
!     Dados 3 vetores (u, v, w) calcula o volume do paralelepipedo das arestas
!     definidas por u, v e w - v.
      dimension u(1:3), v(1:3), w(1:3), r(1:3)
      write(*,*)"Digite as coordenadas de cada vetor"
      read(*,*) u(1), u(2), u(3) 
      read(*,*) v(1), v(2), v(3)
      read(*,*) w(1), w(2), w(3)
      r(1) = w(1) - v(1)
      r(2) = w(2) - v(2)
      r(3) = w(3) - v(3)

!     A = 2[(wx - vx)*(ux + vx) + (wy - vy)*(uy + vy) + (wz - vz)*(uz + vz)]
      area =
     +     2 * (((w(1) - v(1)) * (u(1) + v(1))) +
     +     ((w(2) - v(2))  * (u(2) + v(2))) +
     +     ((w(3) - v(3))  * (u(3) + v(3))))
      write(*,*) "Área do paralelepipedo: ", area

      volume =
     +     (w(1) - v(1)) * (u(1)*v(3) - v(2)*u(3)) +
     +     (w(2) - v(2)) * (v(1)*u(3) - u(1)*v(2)) +
     +     (w(3) - v(3)) * (u(1)*v(2) - v(1)*u(2))
      
      write(*,*) "Volume do paralelepipedo: ", volume
      end
      
      

