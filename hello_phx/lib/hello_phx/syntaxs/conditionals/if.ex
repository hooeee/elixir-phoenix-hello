defmodule HelloPhx.Syntaxs.Conditionals.If do

  def run(data) do

    if data == 1 do
      IO.puts("data is 1")
    else
      IO.puts("data is not 1")
    end

    ## unless는 if의 반대로 조건이 false일때 실행됩니다.
    unless data == 1 do
      IO.puts("data is not 1")
    else
      IO.puts("data is 1")
    end
  end

  def run2() do

    data = nil
    if data do
      IO.puts("data is not nil")
    else
      IO.puts("data is nil")
    end

  end
end
