        program pointer_example
            implicit none
            
            integer, pointer :: arr(:,:) => null()
            integer :: i, j, n
            
            n = 10
            
            ! 分配一个 10x10 的整型数组
            allocate(arr(n,n))
            
            ! 将数组赋值为 0 到 99 之间的随机数
            do i = 1, n
                do j = 1, n
                    arr(i,j) = i*10 + j
                end do
            end do
            
            ! 使用指针变量访问数组中的元素
            do i = 1, n
               
                    write(*,*) arr(i,:)
                
            end do
            deallocate(arr)
            end program pointer_example
            