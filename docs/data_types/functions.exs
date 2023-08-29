# Function Arity
# {function name} / {number of parameters}

# first/1
def first(list) do
  hd(list)
end

# Pattern matching with inline function
def firstv2([]), do: nil
def firstv2([head | _]), do: head

# Guard clause
def firstv3(list) when length(list) == 0, do: nil

# Default parameter by specifying `\\`
def prependToList(list, val \\ 0) do
  [val | list]
end

# Default using function declaration
def firstv4(list, val \\ nil)
def firstv4([head | _], _), do: head
def firstv4([], val), do: val

# Private function with `defp`
defp hello do
  :world
end

# Passing functions by reference `&`
def square(num) do
  num * num
end

list = [1, 2, 3, 4]
Enum.map(list, &square/1)

# Reduce with anonymous function
Enum.reduce(list, 0, fn x, acc -> acc + x end)

# Shortform for simple functions
Enum.map(list, &(&1 * &1))
Enum.reduce(list, 0, &(&1 + &2))

# Calling function that is passed using `.` operator
def apply(a, f) do
  f.(a)
end
