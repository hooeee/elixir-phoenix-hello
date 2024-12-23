defmodule HelloPhx.Repo.Migrations.Posts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :content, :string
      add :author, :string
      timestamps()
    end
  end
end
