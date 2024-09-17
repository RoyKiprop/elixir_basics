defmodule WordFrequencyCounter do
  def word_frequency_counter(sentence) do
    sentence
    |> String.downcase()
    |> String.split()
    |> Enum.reduce(%{}, &words/2)
  end

  defp words(word, acc) do
    Map.update(acc, word, 1, &(&1 + 1))
  end
end
