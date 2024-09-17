defmodule Filter_EvenAnd_Odd do

  def split_even_odd(numbers) do
     Enum.reduce(numbers, {[], []}, fn number, {even, odd} ->
      if rem(number, 2) == 0 do
        {[number | even], odd}
      else
        {even, [number | odd ]}
      end
     end)
     |> Tuple.to_list()
     |> Enum.map(fn x -> Enum.reverse(x) end)
     |> List.to_tuple()
  end
end
