defmodule Githubapi.Repo.Migrations.CreateRepositories do
  use Ecto.Migration

  def change do
    create table(:repositories) do
      add :name, :string
      add :full_name, :string
      add :html_url, :string

      timestamps
    end
  end
end
