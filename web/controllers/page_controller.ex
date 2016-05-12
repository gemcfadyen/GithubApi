defmodule Githubapi.PageController do
  use Githubapi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
