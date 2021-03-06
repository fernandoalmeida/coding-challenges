defmodule PigLatin do
  @doc """
  Given a `phrase`, translate it a word at a time to Pig Latin.

  Words beginning with consonants should have the consonant moved to the end of
  the word, followed by "ay".

  Words beginning with vowels (aeiou) should have "ay" added to the end of the
  word.

  Some groups of letters are treated like consonants, including "ch", "qu",
  "squ", "th", "thr", and "sch".

  Some groups are treated like vowels, including "yt" and "xr".
  """
  @spec translate(phrase :: String.t()) :: String.t()
  def translate(phrase) do
    phrase
    |> String.split(" ")
    |> Enum.map(&translate_word/1)
    |> Enum.join(" ")
  end

  def translate_word(word) do
    cond do
      String.starts_with?(word, ~w(a e i o u yt xr)) ->
	"#{word}ay"
      String.starts_with?(word, ~w(thr sch)) || String.match?(word, ~r/^.qu/) ->
	translate_with_prefix(word, 3)
      String.starts_with?(word, ~w(ch qu th)) ->
	translate_with_prefix(word, 2)
      true ->
	translate_with_prefix(word, 1)
    end
  end

  defp translate_with_prefix(word, prefix_size) do
    <<prefix::bytes-size(prefix_size)>> <> rest = word
    "#{rest}#{prefix}ay"
  end
end
