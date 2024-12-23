defmodule HelloPhxWeb.TodoController do
  use HelloPhxWeb, :controller

  def index(conn, _params) do
    data = [ %{id: 1, title: "First Todo"}, %{id: 2, title: "Second Todo"}]
    json(conn, data)
  end


  def show(conn, %{"id" => id}) do
    IO.puts("Params: #{inspect(id)}")
    json(conn, %{data: "Hello Phoenix #{id}"})
  end
end
