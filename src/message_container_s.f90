submodule(message_container_m) message_container_s
  implicit none
contains
  
  module procedure construct
    new_message_container%message_ = message_
    new_message_container%message_length_ = len(new_message_container%message_)
  end procedure

  module procedure append
    new_message_container%message_ = message_container_%message_ // " " // message_
    new_message_container%message_length_ = len(new_message_container%message_)
  end procedure

  module procedure print_message
    print *, self%message_
  end procedure

  module procedure print_length
    print *, self%message_length_
  end procedure
  
end submodule