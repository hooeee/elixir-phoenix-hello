defmodule Spawns.Example1 do
  def greet do
    receive do
      {sender, value} ->
        send sender, {:ok, "Hello, #{value}!"}
    end
  end
end
