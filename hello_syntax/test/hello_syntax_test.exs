defmodule HelloSyntaxTest do
  use ExUnit.Case
  doctest HelloSyntax

  test "greets the world" do
    assert HelloSyntax.hello() == :world
  end
end
