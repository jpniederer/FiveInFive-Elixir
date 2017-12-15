defmodule BinarySearch do
  def binarySearch(list, val) do
    bSearch(list, val, 0, length(list) - 1)
  end

  defp bSearch([], _, _, _), do: -1
  defp bSearch([_], _, _, _), do: -1
  defp bSearch(_, _, min, max) when max < min, do: -1
  defp bSearch(list, val, min, max) do
    mid = div(min + max, 2)
    {_, v} = Enum.fetch(list, mid)

    cond do
      v > val -> bSearch(list, val, min, mid - 1)
      v < val -> bSearch(list, val, mid + 1, max)
      true -> mid
    end
  end
end