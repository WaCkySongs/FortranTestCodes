module call_c
    use iso_c_binding
    implicit none
contains
    subroutine call_c_ldl()
        call ldl()
    endsubroutine    

    subroutine hello()
        write(*,*) 'hello'
    endsubroutine
end module call_c



program main
    use call_c
    implicit none

    write(*,*) 'this is fortran'
    call hello()
    call call_c_ldl()
end program main