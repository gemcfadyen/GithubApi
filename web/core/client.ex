defmodule Githubapi.Core.Client do
  @base_url "https://api.github.com/"

  def repositories_for_user(name) do
    url = @base_url <> "users/#{name}/repos"
    get(url)
  end

  def repository_for_user(name, repository_name) do
    url = @base_url <> "repos/#{name}/#{repository_name}"
    get(url)
  end

  defp get(url) do
    response = HTTPotion.get(url, headers: ["User-Agent": "Githubapi App"])
    response.body
  end
end
