defmodule SecretHandshake do
  @doc """
  Determine the actions of a secret handshake based on the binary
  representation of the given `code`.

  If the following bits are set, include the corresponding action in your list
  of commands, in order from lowest to highest.

  1 = wink
  10 = double blink
  100 = close your eyes
  1000 = jump

  10000 = Reverse the order of the operations in the secret handshake
  """
  @spec commands(code :: integer) :: list(String.t())
  def commands(code) when code >= 32, do: []
  def commands(code) do
    <<flip, jump, close, blink, wink>> = parse_bin(code)

    select_commands(jump, close, blink, wink) |> reverse(flip)
  end

  defp parse_bin(code) do
    Integer.digits(code, 2)
    |> List.to_string
    |> String.rjust(5, 0)
  end

  defp select_commands(jump, close, blink, wink) do
    [
      {"wink", wink},
      {"double blink", blink},
      {"close your eyes", close},
      {"jump", jump},
    ]
    |> Enum.filter(fn {_command, active} -> active == 1 end)
    |> Enum.map(&(elem(&1, 0)))
  end

  defp reverse(commands, 0), do: commands
  defp reverse(commands, 1), do: Enum.reverse(commands)
end
