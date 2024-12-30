defmodule HelloPhx.Syntaxs.Conditionals.Case do
  def run_1() do
    case {:ok, "data"} do
      ## ok data
      {:ok, result} -> IO.puts("ok #{result}")
      {:error} -> IO.puts("error")
      _ -> IO.puts("default")
    end
  end

  def run_2() do
    case :aa do
      :aa -> IO.puts("aa12312")
      _ -> IO.puts("default")
    end
  end

  def run_3() do
    case {1, 2, 3} do
      {1, 2, x} when x > 0 -> IO.puts("x is positive")
      {1, 2, x} when x < 0 -> IO.puts("x is negative")
      {1, 2, x} when x == 0 -> IO.puts("x is zero")
      _ -> IO.puts("default")
    end
  end
end
