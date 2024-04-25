        program main
            implicit none
            integer::n,lda,ldvr,i
            real*8,allocatable::wr(:),wi(:),a(:,:),vr(:,:)
            real*8,allocatable::work(:)
            complex*8,allocatable::z(:)
            integer::lwork,info
            n=3
            lda=n
            ldvr=n
            allocate(wr(n),wi(n),a(lda,n),vr(ldvr,n),z(n))
            allocate(work(3*n))
            a=reshape((/0.9,0.4,0.8,0.2,0.3,0.7,0.7,0.6,0.5/),[3,3])
            call dgeev('N','V',n,a,lda,wr,wi,1,1,vr,ldvr,work,-1,info)
            lwork=work(1)
            deallocate(work)
            allocate(work(lwork))
            call dgeev('N','V',n,a,lda,wr,wi,1,1,vr,ldvr,work,
     &      lwork,info)  
             do i=1,n
                z(i)=cmplx(wr(i),wi(i))
             end do
             do i=1,n
                write(*,'(2e25.15,"+","i0")') real(z(i)),aimag(z(i))
             end do
             do i=1,n
               write(*,*) a(i,:) 
             end do
             do i=1,n
               write(*,*) vr(i,:) 
             end do
            deallocate(work,wr,wi,a,vr,z)
        end program
