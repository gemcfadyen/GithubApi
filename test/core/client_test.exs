defmodule Githubapi.Core.ClientTest do
  use ExUnit.Case
  alias Githubapi.Core.Client

  @tag :integration
  test "fetches known repositories" do
    response = Client.repositories_for_user("elixir-lang")

    assert String.contains?(response, "elixir-lang/docs")
    assert String.contains?(response, "elixir-lang/ecto")
  end

  @tag :integration
  test "fetches a specific repository" do
    response = Client.repository_for_user("elixir-lang", "docs")

    assert String.contains?(response, "https://github.com/elixir-lang/docs")
    refute String.contains?(response, "https://github.com/elixir-lang/ecto")
  end

  @tag :integration
  test "fetches the language of a repository" do
    response = Client.languages_for_repository("elixir-lang", "docs")

    assert String.contains?(response, "HTML")
  end
end
