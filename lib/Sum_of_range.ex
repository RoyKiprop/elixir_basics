defmodule SumOfRange do

  def sum_of_range(range) do
   range
   |> Enum.reduce(0, &(&1 + &2))
  end


end
