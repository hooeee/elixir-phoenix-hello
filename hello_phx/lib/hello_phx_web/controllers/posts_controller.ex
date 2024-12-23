defmodule HelloPhxWeb.PostsController do
  use HelloPhxWeb, :controller
  alias HelloPhx.Posts.Post
  alias HelloPhx.Repo
  require Logger
  # use Todos.{}

  def index(conn, _params) do
    conn |> json(%{data: "New Post"})
  end

  def home(conn, _param) do conn |> json(%{data: "123"}) end
  def edit(conn, _param) do conn |> json(%{data: "123"} )end
  def create(conn, param) do
    # data = Posts.Post.change(%Posts.Post{}, param)
    # Logger.info("New Post #{inspect(data)}")

    # # data2 = Ecto.Changeset.apply_changes(data)

    # json(conn, param)

    case Post.create_post(param) do
      {:ok, post} ->
        Logger.info("New Post #{inspect(post)}")
        json(conn, post)

      {:error, changeset} ->
        Logger.error("Invalid Post #{inspect(changeset.errors)}")
        conn
        |> put_status(:unprocessable_entity)
        |> json(%{errors: changeset.errors})
    end

  end
  def show(conn, _param) do conn |> json(%{data: "123"} )end
end
