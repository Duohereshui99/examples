ccccccc
        program main
            implicit none
            integer :: i
            character(len=3) :: str
            str='one'
            select case (str)
                case ('one')
                    print *, "i is 1"
                case ('two')
                    print *, "i is 2"
                case default
                    print *, "i is neither 1 nor 2"
            end select
        end program