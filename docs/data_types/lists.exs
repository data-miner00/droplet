# List in Elixir is heterogenous
# It is a singly linked-list
random_list = ["hello", :world, 10_000, [1, 2, 3]]

# Getting first element of the list
IO.puts hd(random_list)

# Getting last element of the list
IO.puts tl(random_list)

# Creating list with pipe operator (cons notation)
random_list2 = [1 | [2, 3]]

# Equivalence
random_list3 = [1 | [2 | [3 | []]]]

# Destructuring list
[first, second, third] = random_list3
IO.puts "first: #{first}, second: #{second}, third: #{third}"

# Destructuring into head and tails
[head | tail] = random_list3

# Keyword list (dict)
# Maps from atom to any type
options = [{:is_active, false}, {:notify_user, true}, {:create_if_not_exists, true}]

# To access the keyword list's element, use the square brackets
IO.puts options[:is_active]

# Insert using List.insert_at
# This creates a new list that has the new value with the pointer to old list
IO.puts List.insert_at(random_list3, 0, "cool")

# List concatenation using the `++/2` operator
IO.puts [1, 2, 3] ++ [4, 5, 6]

# Removes elements from a given list with `--/2`
IO.puts [1, 2, 3, 3] -- [1, 3]
