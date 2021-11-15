module test
    use testb
    implicit none
    
contains
    subroutine hello(world, seigai)
    implicit none
    integer,intent(in) :: world
    integer,intent(in) :: seigai
        write(*,*) 'hello,world'
        write(*,*) world,seigai
        call hellob()
    end subroutine hello
end module test