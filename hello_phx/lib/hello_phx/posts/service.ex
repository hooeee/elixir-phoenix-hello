defmodule HelloPhx.Posts.Service do
  alias HelloPhx.Posts.Post
  alias HelloPhx.Posts.ServiceSaveParam
  alias Ecto.Multi
  require Logger

  def select_all(%Post{title: title, content: content} = params) do
    Logger.metadata(title: title, content: content)
    Logger.info("Select All #{inspect(params)}")
    Post.select_all()
  end


  def save_post(%Post{} = params) do
    # Logger.info("Save Post #{inspect(params)}")
    Map.from_struct(params)
    |> Post.create_post()
    # Multi.new()
    # |> Multi.insert(:post, Post.create_post(params))
    # |> Multi.run()
  end

  ## 구조체로 파라미터 받기
  def save_post_from_struct(%ServiceSaveParam{} = params) do
    Logger.info("Save Post #{inspect(params)}")
    Map.from_struct(params)
    |> Post.create_post()
    params
  end


  ## 맵 타입으로 파라미터 받기
  ## 이게 더 좋다고함
  def save_post_from_map(%{"author" => author , "content" => content, "title" => title} = param) do
    Logger.info("Save Post #{inspect(param)}")
    Post.create_post(param)
  end

end
