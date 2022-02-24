defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    sentence
    |> sanitize()
    |> String.split(" ", trim: true)
    |> Enum.reduce(%{}, &count/2)
  end

  defp sanitize(sentence) do
    sentence
    |> String.downcase()
    |> String.replace(~r/[^\d\p{L}-]/u, " ")
  end

  defp count(word, counter) do
    Map.merge(counter, %{word => Map.get(counter, word, 0) + 1})
  end
end
