defmodule Githubapi.Core.TransformResponse do
  alias Githubapi.Core.Repositories.Repo

  def extract_repos(response) do
    %{"repos" => repos} = Poison.Parser.parse!(~s({"repos": #{response}}), as: %{"repos" => [%Githubapi.Core.Repositories.Repo{}]})

    Enum.map(repos, fn(repo) ->
      r = for {key, val} <- repo, into: %{}, do: {String.to_atom(key), val}
      updated_repo = Map.delete(r, :updated_at)
      struct(Repo, updated_repo)
    end)
  end
end
