defmodule Githubapi.Core.Repositories.RepositoryTest do
  use ExUnit.Case
  alias Githubapi.Core.Repositories.Repository
  alias Githubapi.Core.Repositories.Repo

  test "fetches all saved repositories" do
    assert Repository.all == []
  end

  test "persists a single repository" do
    repository = %Repo{name: "name", full_name: "full name", html_url: "url"}

    Repository.save(repository)

    saved_repo = Repository.all |> List.first
    assert saved_repo.name == repository.name
  end
end
