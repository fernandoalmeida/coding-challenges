defmodule Bob do
  def hey(input) do
    cond do
      String.trim(input) == "" -> "Fine. Be that way!"
      String.ends_with?(input, "?") -> "Sure."
      upcase?(input) || special?(input) -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end

  def upcase?(input) do
    String.match?(input, ~r/[a-zA-Z]/) && input == String.upcase(input)
  end

  def special?(input) do
    input
    |> String.codepoints
    |> Enum.any?(&(byte_size(&1) > 1))
  end
end
