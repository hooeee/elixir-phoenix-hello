defmodule HelloPhx.Syntaxs.Attributes.Attribute do
  ## spec은 prameter 와 return 값에 대한 타입을 정의합니다.
  ## elixirLs에서 기본적인 타입추론은 해주지만 디테일하지 않습니다.
  @spec call(number :: integer) :: integer
  def call(number) do
    number
  end

  # attribute는 값처럼 사용 될 수 있습니다.
  ## final static 이랑 같은 건가 ??
  ### 자바 final -> final로 불변 |클래스 Scope | 런타임 변경 가능(static 있어야함) | 사용목적 : 상수, 메모리 절약, 불변성 보장
  ### 엘릭서 attribute -> 불변 | 모듈 Scope | 런타임 변경 불가 | 사용목적 : 상수, 불변성 보장, 메타데이터
  @my_name "karina"
  @bbb [:a, :b, :c]
  @aaa [1, 2, 3, 4, 5]
  def data do
    IO.inspect(@my_name, label: "name")
    @aaa |> Enum.map(&(&1 * 2)) |> IO.inspect(label: "aaa result ")
    @bbb |> Enum.join(" ") |> IO.puts()
  end

  @helper HelloPhx.Syntaxs.Attributes.AttributeHelper

  def call_helper do
    @helper.execute()
  end
end
