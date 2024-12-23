defmodule HelloPhx.Posts.Post do
  use Ecto.Schema # 고정 값 mixin 같은거임
  alias HelloPhx.Repo

  import Ecto.Changeset

  require Logger

  ## 맵핑되는 테이블 네임

  ## json 직렬화 하려면 이거 던져야함. 이거 설정 안해서 3시간 뻘짓함ㅋㅋ
  @derive {Jason.Encoder, only: [:id, :title, :content, :author, :inserted_at, :updated_at]}
  schema "posts" do
    field :title, :string
    field :content, :string
    field :author, :string
    timestamps()
  end

  def change(posts, att) do
    posts
    |> cast(att, [:title, :content, :author])
    |> validate_required([:title, :content, :author])
    |> Repo.insert();

    # {:ok, posts}
  end


  @spec changeset(Ecto.Schema.t(), map) :: Ecto.Changeset.t()
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :content, :author])
    |> validate_required([:title, :content, :author])
  end

  @spec create_post(map) :: {:ok, Ecto.Schema.t()} | {:error, Ecto.Changeset.t()}
  def create_post(attrs) do
    %__MODULE__{}
    |> changeset(attrs)
    |> Repo.insert()
  end

end
