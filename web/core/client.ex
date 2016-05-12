defmodule Githubapi.Core.Client do
  @base_url "https://api.github.com/"

  def repositories_for_user(user) do
    url = @base_url <> "users/#{user}/repos"
    get(url)
  end

  def repository_for_user(user, repo) do
    url = @base_url <> "repos/#{user}/#{repo}"
    get(url)
  end

  def languages_for_repository(user, repo) do
    url = @base_url <> "repos/#{user}/#{repo}/languages"
    get(url)
  end

  defp get(url) do
    response = HTTPotion.get(url, headers: ["User-Agent": "Githubapi App"])
    response.body
  end
end
