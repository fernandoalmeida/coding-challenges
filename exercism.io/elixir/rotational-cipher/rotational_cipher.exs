defmodule RotationalCipher do
  @lowers ?a..?z
  @uppers ?A..?Z
  @range_size 26

  @doc """
  Given a plaintext and amount to shift by, return a rotated string.

  Example:
  iex> RotationalCipher.rotate("Attack at dawn", 13)
  "Nggnpx ng qnja"
  """
  @spec rotate(text :: String.t(), shift :: integer) :: String.t()
  def rotate(text, shift) do
    text
    |> to_charlist
    |> Enum.map(&(rotate_char(&1, shift)))
    |> to_string
  end

  defp rotate_char(char, shift) do
    cond do
      Enum.member?(@lowers, char) -> rotate_by_range(char, shift, @lowers)
      Enum.member?(@uppers, char) -> rotate_by_range(char, shift, @uppers)
      true -> char
    end
  end

  defp rotate_by_range(char, shift, range) do
    shifted = char + shift

    if Enum.member?(range, shifted), do: shifted, else: shifted - @range_size
  end
end
