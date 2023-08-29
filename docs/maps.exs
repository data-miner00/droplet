# Maps is similar to keywords lists
# However, map does not limit the key to be an atom
# Maps are more efficient than keywords list

random_map = %{
  1 => {"People", "Jarson", "ppl@gmail.com"},
  2 => {"Mandy", "Blake", "mandyb@skiff.com"},
  :other => "undefined"
}

# To access the map, can use square bracket `[]`
IO.puts random_map[1]

# If the key is an atom, can just access it with dot operator `.`
IO.puts random_map.other

# Destructuring a map
# We don't need to match every single key
%{:other => value} = random_map
IO.puts value
