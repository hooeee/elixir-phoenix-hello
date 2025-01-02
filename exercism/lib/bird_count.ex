defmodule BirdCount do

  def today(list) when length(list) == 0, do: nil
  def today([head | tail]), do: head

  def increment_day_count(list) when length(list) ==0 , do: [1]

  def increment_day_count(list), do: [hd(list) + 1 | tl(list)]


  def has_day_without_birds?(list) do
    list |> Enum.any?(fn x -> x == 0 end)
  end

  def total(list) do
    # Please implement the total/1 function
    Enum.sum(list)
  end

  def busy_days(list) do
    list |> Enum.filter(fn x -> x > 4 end) |> length()
  end
end
