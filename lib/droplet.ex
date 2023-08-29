defmodule Droplet do
  @moduledoc """
  Documentation for `Droplet`.
  """

  import IO, only: [puts: 1]
  import Kernel, except: [inspect: 1]

  alias Droplet.Utils, as: Utils

  require Integer

  @doc """
  Hello world.

  ## Examples

      iex> Droplet.hello()
      :world

  """
  def hello do
    :world
  end

  def say_here do
    inspect("Here")
  end

  def inspect(input) do
    puts "Starting Output"
    puts input
    puts "Ending Output"
    puts Utils.add(1, 2)
  end

  def print_is_even(num) do
    puts "Is #{num} even? #{Integer.is_even(num)}"
  end
end
