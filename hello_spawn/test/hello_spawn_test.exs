defmodule HelloSpawnTest do
  use ExUnit.Case
  doctest HelloSpawn

  test "greets the world" do
    assert HelloSpawn.hello() == :world
  end
end
