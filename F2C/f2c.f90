module call_c
    use iso_c_binding
    implicit none
    interface
        subroutine ldl(n,b,c) bind(c,name = 'ldl_')
            use iso_c_binding
            integer(c_int),intent(in) :: n
            real(c_double),intent(in) :: b
            real(c_double),intent(in) :: c(n)
        endsubroutine
    endinterface

contains
    ! subroutine call_c_ldl(a,b,c)
    !     write(*,*) a,b,c
    !     call ldl(a,b,c)
    ! endsubroutine    

    subroutine hello()
        write(*,*) 'hello'
    endsubroutine
end module call_c



program main
    use call_c
    use iso_c_binding
    type(c_ptr) :: cptr1, cptr2
    integer, target :: array(7), scalar
    integer, pointer :: pa(:), ps
    cptr1 = c_loc(array(1)) ! The programmer needs to ensure that the
                            ! array is contiguous if required by the C
                            ! procedure
    cptr2 = c_loc(scalar)
    call c_f_pointer(cptr2, ps)
    call c_f_pointer(cptr2, pa, shape=[7])
  
    write(*,*) 'this is fortran'
    call hello()
    call ldl(6,1.2d0,(/3d0,4d0,1.2d0/))
end program main