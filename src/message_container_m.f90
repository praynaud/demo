module message_container_m
  implicit none
  private

  public :: message_container_t

  type message_container_t
    private
    character(:), allocatable :: message_
    integer :: message_length_
  contains
    private
    procedure, public :: print_message
    procedure, public :: print_length
  end type

  interface message_container_t
    pure module function construct(message_) result(new_message_container)
      character(*), intent(in) :: message_
      type(message_container_t) :: new_message_container
    end function

    pure module function append(message_container_, message_) result(new_message_container)
      type(message_container_t), intent(in) :: message_container_
      character(*), intent(in) :: message_
      type(message_container_t) :: new_message_container
    end function
  end interface message_container_t

  interface

    module subroutine print_message(self)
      class(message_container_t), intent(in) :: self
    end subroutine

    module subroutine print_length(self)
      class(message_container_t), intent(in) :: self
    end subroutine

  end interface
end module message_container_m
