defmodule ProteinTranslation do
  @doc """
  Given a codon, return the corresponding protein
  """
  @spec of_codon(String.t()) :: { atom, String.t() }
  def of_codon(codon) do
    cond do
      codon == "AUG" -> {:ok, "Methionine"}
      codon == "UGG" -> {:ok, "Tryptophan"}
      codon in ["UGU", "UGC"] -> {:ok, "Cysteine"}
      codon in ["UUA", "UUG"] -> {:ok, "Leucine"}
      codon in ["UUU", "UUC"] -> {:ok, "Phenylalanine"}
      codon in ["UAU", "UAC"] -> {:ok, "Tyrosine"}
      codon in ["UCU", "UCC", "UCA", "UCG"] -> {:ok, "Serine"}
      codon in ["UAA", "UAG", "UGA"] -> {:ok, "STOP"}
      true -> {:error, "invalid codon"}
    end
  end

  @doc """
  Given an RNA string, return a list of proteins specified by codons, in order.
  """
  @spec of_rna(String.t()) :: { atom,  list(String.t()) }
  def of_rna(rna) do
    case rna |> split_codons |> select_proteins do
      [] -> {:error, "invalid RNA"}
      proteins -> {:ok, proteins}
    end
  end

  defp split_codons(rna) do
    for <<codon::binary-3 <- rna>>, do: codon
  end

  defp select_proteins(codons) do
    codons
    |> Enum.map(&of_codon/1)
    |> Enum.reduce_while([], &(to_protein(&1, &2)))
    |> Enum.uniq
  end

  defp to_protein({:ok, "STOP"}, acc), do: {:halt, acc}
  defp to_protein({:ok, protein}, acc), do: {:cont, acc ++ [protein]}
  defp to_protein({:error, _reason}, _acc), do: {:halt, []}
end
