defmodule Githubapi.Core.Repositories.Repository do
  alias Githubapi.Core.Repositories.Repo

  def all do
    Githubapi.Repo.all(Repo)
  end

  def save(repo) do
    Githubapi.Repo.insert(repo)
  end
end
