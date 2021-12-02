module inF
    use,intrinsic::iso_c_binding
    implicit none
    TYPE SOMETYPE
        INTEGER NX
        INTEGER NY
        INTEGER I
        REAL*8    R
        LOGICAL L
        REAL*8, DIMENSION(:,:,:),POINTER :: M
        INTEGER, DIMENSION(:,:), POINTER :: N
    END TYPE SOMETYPE

    
end module inF

program main
    use inF
    implicit none
    real(8) :: PI = 3.141
    character(32) hello 
    type(SOMETYPE) :: fTYPE
    
    hello = "hello"//char(0)
    fTYPE%nx = 1
    fTYPE%R = 0d-3
    fTYPE%L = .true.
    allocate(fTYPE%M(1,1,2))
    fTYPE%M = 1d0
    write(*,*) "this is fortran"
    write(*,*) PI
    write(*,*) hello
    call showpi(hello,PI,fTYPE)
end program main




! PROGRAM FORTRAN2C

!     CHARACTER*32 HELLO
!     REAL PI

!     HELLO = "Hello C from Fortran"
!     HELLO(21:21) = CHAR(0)
!     PI = 3.14159
!     CALL SHOWHIPI(HELLO,PI)
! END PROGRAM FORTRAN2C
            