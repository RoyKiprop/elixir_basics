defmodule MaxMinTemperature do

  @cities [
    %{city: "New York", temperature: 22},
    %{city: "Los Angeles", temperature: 25},
    %{city: "Chicago", temperature: 18}
  ]

  def max_min_temperature do
    max_city = Enum.max_by(@cities, fn city -> city.temperature end)
    min_city = Enum.min_by(@cities, fn city -> city.temperature end)
    %{max: max_city, min: min_city}


  end
end
