module foo 
    contains

    subroutine hello (a)

    integer a

    write(*,*)'Hello from Fortran90!!!',a

    end subroutine hello

endmodule

program main
    use foo
    call hello(1)
end program main