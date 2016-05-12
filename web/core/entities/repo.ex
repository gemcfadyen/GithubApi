defmodule Githubapi.Core.Entities.Repo do
  @derive [Poison.Encoder]
  defstruct [:full_name]
end
