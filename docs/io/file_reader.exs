defmodule Droplet.Docs.IO.FileReader do
  def read_strings_or_fail(path) do
    File.read!(path)
    |> String.split("\n")
    |> Enum.map(&String.trim/1)
    |> Enum.filter(&String.length(&1) > 10)
    |> Enum.filter(fn str -> String.length(str) < 30 end)
    |> Enum.random()
  end
end
