program main
  use demo, only: say_hello
  use message_container_m, only: message_container_t
  implicit none

  type(message_container_t) :: container1, container2

  call say_hello()

  container1 = message_container_t("Hello")

  call container1%print_message()
  call container1%print_length()

  container2 = message_container_t(container1, "Joey")

  call container2%print_message()
  call container2%print_length()

end program main
