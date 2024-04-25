ccccccc
        program type
            implicit none
            !define type
            type::person
                character(len=30)::name
                integer::age
            end type
            integer::i
            ! declare type variable
            type(person)::person1,person2
            ! assign value to type variable
            person1%name='zhangsan'
            person1%age=20
            person2%name='lisi'
            person2%age=30
            !
            print*,'person1 name:',person1%name
            print*,'person1 age:',person1%age
            print*,'person2 name:',person2%name
            print*,'person2 age:',person2%age

            do i=1,person1%age
                print*,'person1 age:',i
            end do



        end program