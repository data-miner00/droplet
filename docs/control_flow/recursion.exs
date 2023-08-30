# Recursion with pattern matching
def map([], _), do: []
def map([head | tail], f) do
  [f.(head) | map(tail, f)]
end

# Example 2
def get_sentence(2), do: "sefond"
def get_sentence(1), do: "first"
def get_sentence(n), do: "#{n}! "
def lyrics(), do: lyrics(100..1)
def lyrics(first..last) when first <= last, do: get_sentence(first)
def lyrics(first..last), do: get_sentence(first) <> lyrics(first - 1..last)

# Body recursion
def len([]), do: 0
def len([_ | tail]), do: 1 + len(tail)

# Tail recursion
# Only happens when the last operation of a function is recursion
def lenv2([_ | tail]), do: lenv2(tail, 1)
def lenv2([], current_len), do: current_len
def lenv2([_ | tail], current_len), do: lenv2(tail, current_len + 1)

# Tail recursion map will reverse the list
def tail_map([head | tail], f), do: tail_map(tail, f, [f.(head)])
def tail_map([], _, result), do: result
def tail_map([head | tail], f, result), do: tail_map(tail, f, [f.(head) | result])
