defmodule HelloPhxWeb.PostsController do
  use HelloPhxWeb, :controller
  require Logger
  alias HelloPhx.Posts.Post
  # use Todos.{}


  @abc "abc"

  def index(conn, _params) do

    Logger.info(@abc)
    data = Post.select_all()
    json(conn, data)
  end

  def home(conn, _param) do conn |> json(%{data: "123"}) end
  def edit(conn, _param) do conn |> json(%{data: "123"} )end
  def create(conn, param) do
    case Post.create_post(param) do
      {:ok, post} ->
        conn
        |> put_status(:created)
        |> json(%{data: post})
      {:error, changeset} ->
        conn
        |> put_status(:not_found)
        |> json(%{errors: changeset.errors})

    end

    # Post.create_post(param)
    # Logger.info("New Post #{inspect(param)}")
    # conn |> json(param)
  end
  def show(conn, _param) do conn |> json(%{data: "123"} )end
end
