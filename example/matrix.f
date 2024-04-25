        program main
            implicit none
            integer::i,j
            real*8::a(3,3),x(3),y(3),b(3,3),c(3,3)

            a=reshape([1d0,2d0,3d0,4d0,5d0,6d0,7d0,8d0,9d0],[3,3])
            x=[1d0,2d0,3d0]
            write(*,*) 'a:'
            do i=1,3
            write(*,*) a(i,:)
            end do
            write(*,*) 'x:',x
            b=transpose(a)
            write(*,*) 'b:'
            do i=1,3
            write(*,*) b(i,:)
            end do
            y=matmul(b,x)       !!矩阵乘法,matrix multiply
            write(*,*) 'y:',y
        end program
