defmodule Droplet.Docs.SevenWonders do
  defstruct name: "", country: ""
  alias Droplet.Docs.SevenWonders

  @type t :: %SevenWonders{
    name: String.t(),
    country: String.t()
  }

  @spec all :: [t()]
  def all() do
    [
      %SevenWonders{name: "Taj Mahal", country: "India"},
    ]
  end

  @spec print_names([t()]) :: :ok
  def print_names(wonders) do
    Enum.each(wonders, fn %{name: name} -> IO.puts(name) end)
  end

  @spec filter_by_country([t()], String.t()) :: [t()]
  def filter_by_country(wonders, country) do
    wonders |> Enum.filter(fn %{country: country_name} -> country_name == country end)
  end

  @spec in_country_starting_with_i([t()]) :: [t()]
  def in_country_starting_with_i(wonders) do
    wonders |> Enum.filter(fn %{country: country} -> String.starts_with?(country, "I") end)
  end

  @spec sort_by_country_length([t()]) :: [t()]
  def sort_by_country_length(_wonders) do
    wonders |> Enum.sort(fn x, y -> String.length(x.country) < String.length(y.country) end)
  end

  @spec name_country_list([t()]) :: [t()]
  def name_country_list(wonders) do
    wonders |> Enum.reduce([], fn wonder, acc -> [[wonder.name, wonder.country] | acc] end)
  end

  def country_name_keyword_list(wonders) do
    wonders |> Enum.reduce([], fn wonder, acc -> [{String.to_atom(wonder.name), wonder.country} | acc] end)
  end

  def all_names(wonders) do
    wonders |> Enum.map(&(&1.name))
  end

  def all_names_2(wonders) do
    for %{name: name} <- wonders, do: name
  end
end
