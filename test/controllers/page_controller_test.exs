defmodule Githubapi.PageControllerTest do
  use Githubapi.ConnCase
  alias Githubapi.Core.Repositories.Repository

  test "GET /user/:user/repos returns empty", %{conn: conn} do
    conn = conn(:get, "/users/maikon/repos")

    response = Githubapi.Router.call(conn, [])
    saved_repos = Repository.all

    assert length(saved_repos) == 1
    assert response.status == 200
  end
end
