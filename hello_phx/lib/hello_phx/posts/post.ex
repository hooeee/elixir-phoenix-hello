defmodule HelloPhx.Posts.Post do
  use Ecto.Schema # 고정 값 mixin 같은거임


  ## 맵핑되는 테이블 네임
  schema "posts" do
    field :title, :string
    field :context, :string
    field :author, :string
    timestamps()
  end

end
