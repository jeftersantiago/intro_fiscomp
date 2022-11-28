      implicit real * 8 (a-h, o-z)
      parameter(n = 3000)
      parameter(t_total = 100)

      parameter(pi = acos(-1.0d0))
      parameter(gamma = 0.5d0)
      parameter(OM = 0.66)
      parameter(f2 = 1.2d0)

      open(10, file="saida-tarefa-b4-theta-complexidade.dat")
      open(11, file="saida-tarefa-b4-omega-complexidade.dat")

      dt = t_total / n 
 
      
      t = 0d0
      tt = 7 * pi / 13 
      omg = 0.0d0
      count = 0

      do i = 1, n
         
         t = t + dt
         
         tmp_omg = omg - sin(tt)*dt-gamma*omg*dt + f*sin(OM*t)*dt
         tmp_tt = tt + tmp_omg*dt 
         
         write(10, *) t, tmp_tt
         write(11, *) t, tmp_omg

         if(tmp_tt * tt < 0) then
            count = count + 1
         end if

         omg = tmp_omg
         tt = tmp_tt
         
      end do
      close(10)
      close(11)
      end
