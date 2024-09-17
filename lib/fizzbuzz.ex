defmodule FizzBuzz do

  @numbers 1..100
  def checknumber() do
    Enum.map(@numbers, &fizzbuzz/1 )
  end
  def fizzbuzz(number) when rem(number, 3) == 0 and rem(number, 5) == 0 do
    "FizzBuzz"
  end
  def fizzbuzz(number) when  rem(number, 3) == 0 do
    "Fizz"
  end

  def fizzbuzz(number) when rem(number, 5) == 0 do
    "Buzz"
  end
  def fizzbuzz(number) do
    number
  end
end
