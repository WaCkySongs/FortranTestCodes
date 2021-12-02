module py2f90
    use,intrinsic::iso_c_binding
    implicit none
    contains
        subroutine hello(a)bind(c)
            integer(c_int),intent(in),value ::a
            write(*,*) 'fortran form py',a
        endsubroutine

        subroutine add(a,c)bind(c)
            integer(c_int),intent(in),value:: a
            integer(c_int),intent(out):: c
            c = a + 1
            write(*,*) a,'form py,','res',c
            return
        endsubroutine

        subroutine transferMat2For(matrix,n1,n2)bind(c,name='array2py')
        implicit none
        integer(c_int),intent(in),value::n1,n2
        real(c_float),intent(out)::matrix(n1,n2)
    
        integer::i,j
        ! initialize matrix
        matrix = 0.0E0
        ! loop
        do i=1,n1
            do j=1,n2
                matrix(i,j) = real(i,4)*1.E1+real(j,4)*2.E0
                write(*,"('Row:',i4,1x,'Col:',i4,1x,'Value:',1x,F5.2)")i,j,matrix(i,j)
            enddo
        enddo
        return
        end subroutine
    end module
    
    program test
        ! use integrals, only: simpson
        use py2f90
    implicit none
    real(kind=4)::aa(4,5)
    call transferMat2For(aa,4,5)
    end program