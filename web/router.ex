defmodule Githubapi.Router do
  use Githubapi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Githubapi do
    pipe_through :api

    get "/", PageController, :index
    # get "/users/:user", PageController, :user_repos
    get "/users/:user/repos", PageController, :user_repos
  end

  # Other scopes may use custom stacks.
  # scope "/api", Githubapi do
  #   pipe_through :api
  # end
end
