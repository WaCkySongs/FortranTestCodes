
module Amod
    use Bmod
    implicit none
    type Atype
        type(Btype) B
    end type Atype

    interface Creat
        module procedure CreatA
    end interface 

    contains

    function CreatA(A)
    type(Atype) A,CreatA

    A%B = Creat(A%B)
    CreatA = A

    end function CreatA

    integer function testABC()
    type(Atype) A,AA
    type(Btype) B
                                            !!!WHYYYYYYYYYYYYYYYYYYYY Maybe        
    B = Creat(B)                    ! -		B%C	{...}	REAL(8) 
    write(*,*) 'B%C' 
    write(*,*) B%C 
    read(*,*)
    A = Creat(A)                    ! 		A%B%C	 Undefined address	
    write(*,*) A%B%C 
    AA%B = Creat(AA%B)                 !       AA%B%C =  Undefined address
    write(*,*) AA%B%C 

    testABC=1
    end function testABC

end module Amod
    