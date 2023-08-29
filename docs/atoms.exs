# Atoms is a name which its value are the same
IO.puts :firstname

# Atoms can be space delimited within double quotes
IO.puts :"this is also an atom"

# File open returns a tuple of atom and content
# When success => {:ok, content}
# When failed => {:error, reason}
File.read "/path/to/file"

# Boolean is implemented as atoms in Elixir
# We can ignore the `:` for boolean atoms and they will work
IO.puts :true
IO.puts :false
IO.puts true

# Nil is also an atom
IO.puts :nil
IO.puts nil
