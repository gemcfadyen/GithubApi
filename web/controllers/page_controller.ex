defmodule Githubapi.PageController do
  use Githubapi.Web, :controller
  alias Githubapi.Core.GetUserRepos
  alias Githubapi.Core.TransformResponse
  alias Githubapi.Core.Repositories.Repository

  def index(conn, _params) do
    render conn, "index.html"
  end

  def user_repos(conn, %{"user" => user}) do
    GetUserRepos.get(user)
    |> TransformResponse.extract_repos
    |> Enum.map(fn(repo) -> Repository.save(repo) end)

    # repos = Repositories.All.for_user(user)
    repos = Repository.all

    json conn, repos
  end

  # def populate_user_repos(conn, params) do
  #   redirect conn, to: "/"
  # end
end
