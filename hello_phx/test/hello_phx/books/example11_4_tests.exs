defmodule Books.Example114Test do
  use ExUnit.Case, async: true
  # import ExUnit.Case, only: [test: 1]


  test "브레이크 포인트 테스트" do
    data = Books.Example114.calculate("1 + 2")
    IO.inspect(data)

    assert data == 2
  end


end
