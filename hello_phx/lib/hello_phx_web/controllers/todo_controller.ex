defmodule HelloPhxWeb.TodoController do
  use HelloPhxWeb, :controller

  def index(conn, _params) do
    json(conn, %{data: "Hello Phoenix"})
  end


  def show(conn, %{"id" => id}) do
    IO.puts("Params: #{inspect(id)}")
    json(conn, %{data: "Hello Phoenix #{id}"})
  end
end
