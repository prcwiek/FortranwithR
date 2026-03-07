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

end module fortranwithr
