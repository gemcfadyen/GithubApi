defmodule Githubapi.PageController do
  use Githubapi.Web, :controller
  alias Githubapi.Core.Client
  alias Githubapi.Core.TransformResponse
  alias Githubapi.Core.Repositories.Repository

  def index(conn, _params) do
    render conn, "index.html"
  end

  def user_repos(conn, %{"user" => user}) do
    Client.repositories_for_user(user)
    |> TransformResponse.extract_repos
    |> Enum.map(fn(repo) -> Repository.save(repo) end)

    repos = Repository.all

    json conn, repos
  end
end
