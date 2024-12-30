defmodule HelloPhx.Posts.Post do
  alias HelloPhx.Repo
  # 고정 값 mixin 같은거임
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query

  ## schema, Ecto.Schema를 사용하여 구조체를 생성할 수 잇다.
  ## defstruct [:title, :content, :author]
  ## 이거랑 같다고함!

  ## 맵핑되는 테이블 네임
  # @derive {Jason.Encoder, only: [:id, :title, :content, :author, :inserted_at, :updated_at]}
  schema "posts" do
    field(:title, :string)
    field(:content, :string)
    field(:author, :string)
    timestamps()
  end

  def select_where(date) do
    from(HelloPhx.Posts.Post)
    |> where([p], p.inserted_at > ^date)
    |> Repo.all()
  end

  def select_all() do
    from(HelloPhx.Posts.Post)
    |> select([p], %{id: p.id, title: p.title, content: p.content, author: p.author})
    |> where([p], like(p.author, "%rai%"))
    |> or_where([p], p.author == "abc")
    |> order_by([p], desc: p.id)
    |> Repo.all()

    # |> IO.inspect(label: "select_all")
  end

  @spec update(integer(), String.t()) ::
          {:ok, %HelloPhx.Posts.Post{}} | {:error, Ecto.Changeset.t()}
  def update(key, title) do
    post = Repo.get(HelloPhx.Posts.Post, key)

    post
    |> changeset(%{title: title})
    |> Repo.update()
  end

  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :content, :author])
    |> validate_required([:title, :content, :author])
  end

  def create_post(attr) do
    %__MODULE__{}
    |> changeset(attr)
    |> HelloPhx.Repo.insert()
    |> case do
      {:ok, post} ->
        {:ok, %{id: post.id, title: post.title, content: post.content, author: post.author}}

      {:error, changeset} ->
        {:error, changeset}
    end
    |> IO.inspect(label: "attr")
  end
end
