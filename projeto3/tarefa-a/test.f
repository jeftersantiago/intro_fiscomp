write(ient,3) 
3       format(169('-'), /, '|', 6(27x, '|'), /, 169('-'))
write(ient,4) d_sim3, d_frente2, d_tras2, d_sim5, d_sec_s2, 
     +  d_ter_as5
4       format('| ', 6(d25.18,' | '))


      end do
      write(ient,5)
5       format(169('-')) 
      close(ient)
