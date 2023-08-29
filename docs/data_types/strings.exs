# Strings are UTF8 encoded; It supports unicode out of the box
euro = "€"

IO.puts byte_size(euro) # 3 bytes long
IO.puts String.length(euro) # 1 characters long

# Concatenate strings
firstname = "Josh"
lastname = " Boxer"

IO.puts firstname <> lastname

# String interpolation
IO.puts "Hello, #{firstname}, your last name is #{lastname}"

# String interpolation works well with string variables
# When trying to interpolate object types such as array,
# it will cast the original string into a sequence of array.
numbers = [1, 2, 3]
interpolated = "Test #{numbers}" # <<84, 101, 115, 116, 32, 1, 2, 3>>
IO.puts interpolated # `Test ☺☻♥` (It will turned into unicode characters)

# The <<>> is a sequence of bytes
# We can concatenate bytes with the concatenate operator `<>` too
firstname_concat = firstname <> <<1, 2, 3>>
