defmodule Droplet.Utils do
  @moduledoc """
  The utility modules.
  """

  def add(a, b) do
    a + b
  end

  def is_leap_year(year) when rem(year, 400) == 0, do: true
  def is_leap_year(year) when rem(year, 100) == 0, do: false
  def is_leap_year(year) when rem(year, 4) == 0, do: true
  def is_leap_year(_), do: false
end
