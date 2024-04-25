        program Interpolation
            implicit none

            integer, parameter :: n = 10 ! 非均匀格点的数量
            real(8) :: x(n)           ! 非均匀格点的位置
            real(8) :: y(n)           ! 非均匀格点上的函数值
            real(8) :: xi             ! 均匀格点上的位置
            real(8) :: result         ! 插值结果

            ! 初始化非均匀格点的位置和函数值
            x = (/ 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0 /)
            y = (/ 1, 4, 9, 16, 25, 36, 49, 64, 81, 100 /)

            ! 在均匀格点上进行插值
            xi = 25
            result = interpolateLagrange(xi, x, y, n)

            ! 输出结果
            write(*,*) xi, result

        contains

            ! 拉格朗日插值法
            real(8) function interpolateLagrange(xi, x, y, n)
                real(8), intent(in) :: xi
                real(8), intent(in) :: x(:)
                real(8), intent(in) :: y(:)
                integer, intent(in) :: n

                real(8) :: result
                real(8) :: term
                integer :: i, j

                result = 0.0

                do i = 1, n
                    term = y(i)
                    do j = 1, n
                        if (i /= j) then
                            term = term * (xi - x(j)) / (x(i) - x(j))
                        end if
                    end do
                    result = result + term
                end do
                interpolateLagrange= result
            end function interpolateLagrange

        end program Interpolation