defmodule GprcClientTest do
  use ExUnit.Case
  doctest GprcClient

  test "greets the world" do
    assert GprcClient.hello() == :world
  end
end
