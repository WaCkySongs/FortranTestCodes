module Bmod
    implicit none

    type,public :: Btype
    real(8),allocatable :: c (:)
    endtype Btype

    interface Creat
        module procedure CreatB
    end interface 

    contains

    function CreatB(B)
        type(Btype) B,CreatB

        allocate(B%c(1))
        B%c = 1d0
        CreatB = B

    end function CreatB

end module Bmod
