ccccccc
        program main
            implicit none
            integer::n
            complex*16,allocatable::A(:,:)
            complex*16,allocatable::w(:),vl(:,:),vr(:,:)
            complex*16,allocatable::work(:),rwork(:)
            integer::i,j
            integer :: info,lda,lwork,ldvr,ldvl
            n=2
            ldvr=n 
            ldvl=n
            lda=n
            lwork=2*n
            allocate(A(n,n),w(n),vl(n,n),vr(n,n))
            allocate(work(lwork),rwork(lwork))
            A=reshape([cmplx(0d0,0d0),cmplx(0d0,1d0),cmplx(0d0,-1d0)
     &       ,cmplx(0d0,0d0)],[2,2])    
            do i=1,n
                write(*,*) A(i,:)
            end do

            call zgeev('N','V',n,A,lda,w,vl,ldvl,vr,ldvr,
     &       work,lwork,rwork,info)
            write(*,*)  'info=',info
            write(*,*)  'w=',w



            deallocate(A,w,vl,vr,work,rwork)
        end program