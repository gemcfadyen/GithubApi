defmodule Githubapi.Core.TransformResponse do
  alias Githubapi.Core.Entities.Repo

  def extract_repos(response) do
    %{"repos" => repos} = Poison.decode!(~s({"repos": #{response}}), as: %{"repos" => [%Repo{}]})
    repos
  end
end
