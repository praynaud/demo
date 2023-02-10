module demo
  implicit none
  private

  public :: say_hello
contains
  subroutine say_hello
    print *, "Hello, demo!"
  end subroutine say_hello
end module demo
