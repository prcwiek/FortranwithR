module fortranwithr

  use, intrinsic  :: iso_c_binding

  implicit none
  private

contains

!**********************************************************
!* Hello UseR! 2026                                       *
!**********************************************************
  subroutine hello_user() bind(C, name = "hello_user_c")

      !print *, "Hello UseR! 2026"

  end subroutine hello_user

!**********************************************************
!* my_sqrt                                                *
!**********************************************************
  subroutine my_sqrt(value, result) bind(C, name = "my_sqrt_c")

      real(c_double), intent(in)        :: value
      real(c_double), intent(in out)    :: result

      result = sqrt(value)

  end subroutine my_sqrt

end module fortranwithr
