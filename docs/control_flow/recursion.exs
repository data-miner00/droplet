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

# Reverse number
@spec reverse_num(number(), number()) :: number()
def reverse_num(num, acc \\ 0)
def reverse_num(0, acc), do: acc
def reverse_num(num, acc) do
  new_num = div(num, 10)
  new_acc = acc * 10 + rem(num, 10)
  reverse_num(new_num, new_acc)
end

# Reverse a list
@spec reverse_list([any()], [any()]) :: [any()]
def reverse_list(elements, acc \\ [])
def reverse_list([], acc), do: acc
def reverse_list([h | t], acc), do: reverse(t, [h | acc])

@spec map_list([any()], (any() -> any()), any()) :: any()
def map_list(elements, func, acc \\ [])
def map_list([], _, acc), do: acc
def map_list([h | t], func, acc), do: map(_, func, [acc | func.(h)])

# Factorial
defmodule Factorial do
  def of(1), do: 1
  def of(num), do: num * of(num - 1)

  def of_tail(num, acc \\ 1)
  def of_tail(1, acc), do: acc
  def of_tail(num, acc) do
    of_tail(num - 1, acc * num)
  end
end

# Concat
@spec concat([any()], [any()]) :: [any()]
def concat(src, dst), do: concat_func(src |> reverse(), dst)
defp concat_func([], dst), do: dst
defp concat_func([h | t], dst), do: concat_func(t, [h | dst])

# FlatMap
def flat_map(elements, func, acc \\ [])
def flat_map([], _func, acc), do: acc
def flat_map([h | t], func, acc), do: flat_map(t, func, concat(acc, func.(h)))
