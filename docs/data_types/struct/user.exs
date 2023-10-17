defmodule User do
  defstruct username: "", email: "", age: nil
end

# Creating an instaned
user = %User{username: "usr", email: "chroot@archvbox.com", age: 55}

message = case user do
  %{username: "user1"} -> "Hellfoodfs"
  %{email: "harry@gmail.com"} -> "hi my email is Harry"
  _ -> "The username is #{user.username}"
end
