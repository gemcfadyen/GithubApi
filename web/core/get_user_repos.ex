defmodule Githubapi.Core.GetUserRepos do

  def get(user) do
    Application.get_env(:githubapi, :github_client).repositories_for_user(user)
  end
end
