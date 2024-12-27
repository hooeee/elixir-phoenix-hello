defmodule HelloPhx.Syntaxs.Conditionals.Cond do


  def run_1 do

    cond do
      1 + 1 == 3 -> IO.puts("1 + 1 == 3")
      1 + 1 == 2 -> IO.puts("1 + 1 == 2")
      1 + 1 == 4 -> IO.puts("1 + 1 == 4")
      true -> IO.puts("default")
    end

  end

end
