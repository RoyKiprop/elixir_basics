defmodule Unique_Products do

  @products [
    %{name: "apple", price: 1.2},
    %{name: "banana", price: 0.5},
    %{name: "apple", price: 1.3},
    %{name: "orange", price: 0.8}
  ]

  def unique_products do

    @products
    |> Enum.map(&(&1[:name]))
    |> Enum.uniq()
  end



end
