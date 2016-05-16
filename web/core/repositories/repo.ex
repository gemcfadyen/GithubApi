defmodule Githubapi.Core.Repositories.Repo do
  use Githubapi.Web, :model
  @derive [Poison.Encoder]

  schema "repos" do
    field :name, :string
    field :full_name, :string
    field :html_url, :string

    timestamps
  end
end
