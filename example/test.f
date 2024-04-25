        PROGRAM namelist_input
        implicit none
        real*8::a,b,c,dd
        real*8::d,e,f
        
        namelist /test1/ a,b,c
       ! namelist /test2/ d,e,f

        dd=7d0

        open(10,file="input1")
        read(10,nml=test1)
        open(11,file="input2")
        read(11,*) d,e,f

        write(*,*) a,b,c
        
        write(*,*) d,e,f
        END