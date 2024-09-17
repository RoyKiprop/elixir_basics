defmodule CartCalculation do
  @cart [
    %{name: "apple", quantity: 3, price: 1.2},
    %{name: "banana", quantity: 2, price: 0.5},
    %{name: "orange", quantity: 1, price: 0.8}
  ]

  def total_cost do
    @cart
    |> Enum.reduce(0, fn item, acc ->
      acc + (item.quantity * item.price)
    end)
    |> Float.round(2)
  end
end
