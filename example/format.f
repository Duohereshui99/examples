ccccccc
        program main
            implicit none
            integer::i
            real*8::pi
            CHARACTER(len=20) :: string ! Format in character variable
            string = '(1X,I6,F10.2)'
            pi=acos(-1.0d0)
            i=21
            
 100        FORMAT (' The result for iteration ', I3,' is ', F11.9)
            write(*,string) i,pi ! Format in character variable
            WRITE (*,'(1X,I6,F10.2)') i,pi ! Format in character constant
            WRITE (*,100) i, pi
            open(777,file='output')
            write(777,100) i,pi
            close(777)
        end program