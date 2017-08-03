defmodule Strain do
  @doc """
  Given a `list` of items and a function `fun`, return the list of items where
  `fun` returns true.

  Do not use `Enum.filter`.
  """
  @spec keep(list :: list(any), fun :: ((any) -> boolean)) :: list(any)
  def keep(list, fun) do
    partition(list, fun) |> Map.get(true)
  end

  @doc """
  Given a `list` of items and a function `fun`, return the list of items where
  `fun` returns false.

  Do not use `Enum.reject`.
  """
  @spec discard(list :: list(any), fun :: ((any) -> boolean)) :: list(any)
  def discard(list, fun) do
    partition(list, fun) |> Map.get(false)
  end

  defp partition(list, fun) do
    Enum.reduce list, %{true => [], false => []}, fn elem, acc ->
      result = fun.(elem)

      Map.put(acc, result, acc[result] ++ [elem])
    end
  end
end
