defmodule MessageEncoder do
  @alphabet ?a..?z

  def letter_position do
    @alphabet
    |> Enum.to_list()
    |> Enum.map(fn letter -> {<<letter>> , letter - ?a + 1} end)
    |> Enum.into(%{})
  end

  def encode(message) do
    letter_map = letter_position()

    message
    |> String.downcase()
    |> String.graphemes()
    |> Enum.map(fn letter ->

      Map.get(letter_map, letter )

    end)

  end
end
