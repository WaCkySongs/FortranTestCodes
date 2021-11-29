
program main

    use Amod
    ! use ROBO_MOD  ! Calculation Main Mod
    ! use Test_infos
    implicit none

    write(*,*) "****** Ver 3.1 *******"
    write(*,*) "****** Ver 3.3 *******"
    write(*,*) testABC()
    
    ! *** Some test for subprogram
    !write(*,*) TestShaft() ! uses for test only
    !call TestOil(24,48)  
    !call TestOilShaftIF(24,48)
    !call TestOPIF(24,48) 
    !call TestNewmark()
    ! call TestNewton(24,48)
    !call TestOPSingle(24,48)
    ! call TestOPcouple(24,48)
    
    ! *** main program ***
    write(*,*) "****** Ver 3.1 *******"
    write(*,*) "****** Dev     *******"
    write(*,*) "******    by   *******"
    write(*,*) "******      C.W*******"
    write(*,*) "******    XJTU *******"
    ! write(*,*) ROBO()
    write(*,*) "*****",'********   finished   ********'
    ! ***
    
    read(*,*)

end program
    
