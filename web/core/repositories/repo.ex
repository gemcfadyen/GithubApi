defmodule Githubapi.Core.Repositories.Repo do
  @derive [Poison.Encoder]

  defstruct [
    :name,
    :full_name,
    :html_url
  ]
end
