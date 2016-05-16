defmodule Githubapi.Repo.Migrations.CreateRepos do
  use Ecto.Migration

  def change do
    create table(:repos) do
      add :name, :string
      add :full_name, :string
      add :html_url, :string

      timestamps
    end
  end
end
