defmodule HelloPhxWeb.PostsController do
  use HelloPhxWeb, :controller
  require Logger
  # use Todos.{}

  def index(conn, _params) do
    conn |> json(%{data: "New Post"})
  end

  def home(conn, _param) do conn |> json(%{data: "123"}) end
  def edit(conn, _param) do conn |> json(%{data: "123"} )end
  def create(conn, param) do
    Logger.info("New Post #{inspect(param)}")
    conn |> json(param)
  end
  def show(conn, _param) do conn |> json(%{data: "123"} )end
end
