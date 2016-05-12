defmodule Githubapi.Core.Client do
  @base_url "https://api.github.com/"

  def get_repositories(username) do
    url = @base_url <> "users/#{username}/repos"
    get(url)
  end

  defp get(url) do
    response = HTTPotion.get(url, headers: ["User-Agent": "Githubapi App"])
    response.body
  end
end
