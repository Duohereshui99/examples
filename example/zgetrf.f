ccccccc
        program main
            implicit none
            integer::n,lda,info,lwork,i,j
            complex*16,allocatable::a(:,:),work(:)    
            integer,allocatable::ipiv(:)
ccccccc 
            n=2
            lda=n
            lwork=n*n
ccccccc
            allocate(a(lda,n),work(lwork),ipiv(n))
ccccccc
            a(1,1) = (0.0, 0.0)
            a(1,2) = (0.0, -1.0)
            a(2,1) = (0.0, 1.0)
            a(2,2) = (0.0, 0.0)
           
            write(*,*) 'matrix a:'
            do i=1,n
                write(*,*) a(i,:)
            end do 


        call zgetrf(n, n, a, lda, ipiv, info)
ccccccc
            if (info .ne. 0) then
                print *, 'ZGETRF failed, info = ', info
                stop
            end if
ccccccc
        call zgetri(n, a, lda, ipiv, work, lwork, info)
ccccccc
            if (info .ne. 0) then
                print *, 'ZGETRI failed, info = ', info
                stop
            end if
ccccccc
            write(*,*) 'inverse matrix a:'
            do i=1,n
                write(*,*) a(i,:)
            end do


            
            deallocate(a,work,ipiv)

        end program