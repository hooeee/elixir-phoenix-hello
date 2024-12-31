defmodule HelloPhx.Syntaxs.Pins.Pin do
  @spec run() :: [%{id: 1 | 2 | 3, name: <<_::40>>}, ...]
  def run() do
    ids =
      [%{id: 1, name: "name1"}, %{id: 2, name: "name2"}, %{id: 3, name: "name3"}]
      |> Enum.map(& &1.id)

    number = 1

    IO.puts("pin !!!!")

    for ^number <- ids do
      IO.puts(number)
    end

    IO.puts("not pin")

    for number <- ids do
      IO.puts(number)
    end
  end
end
