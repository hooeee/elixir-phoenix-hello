defmodule HelloPhx.Repo.Migrations.Comments do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :title, :string
      add :context, :string
      add :author, :string
      add :posts_id, :integer
      timestamps()
    end
  end
end
