defmodule Githubapi.Core.TransformResponse do
  alias Githubapi.Core.Repositories.Repo

  def extract_repos(response) do
    %{"repos" => repos} = Poison.decode!(~s({"repos": #{response}}), as: %{"repos" => [%Repo{}]})
    repos
  end
end
