defmodule Githubapi.Core.FakeClient do
  alias Githubapi.Core.Repositories.Repo

  def repositories_for_user(user) do
    {:ok, response} = File.read("test/sample_data/elixir_repos_response.json")
    response
  end
end
