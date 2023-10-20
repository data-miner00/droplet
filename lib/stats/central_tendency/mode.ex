defmodule Stats.CentralTendency.Mode do
  def mode(nums) when is_list(nums) do
    ranked_map = nums |> Enum.frequencies()

    ranked_map
    |> Map.values()
    |> Enum.max()
    |> mode_aux(ranked_map)
  end

  defp mode_aux(1, _ranked_map), do: nil
  defp mode_aux(max, ranked_map) do
    ranked_map
    |> Map.filter(fn {_key, value} -> value == max end)
    |> Map.keys()
  end
end
