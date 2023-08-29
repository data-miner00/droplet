# Tuples
random_tuple = {"Hello", 10_000, :world}

# Extract specific value with zero-based index
IO.puts elem(random_tuple, 2)

# Update (create a new tuple)
updated_tuple = put_elem(random_tuple, 2, :hello)

# Destructuring/pattern matching
{firstItem, secondItem, thirdItem} = updated_tuple
IO.puts "first: #{firstItem}, second: #{secondItem}, third: #{thirdItem}"

# Use underscore to ignore destructured values
{item1, _, item2} = updated_tuple
