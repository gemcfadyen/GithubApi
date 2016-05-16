defmodule Githubapi.Core.TransformResponseTest do
  use ExUnit.Case, async: true
  alias Githubapi.Core.TransformResponse

  test "parses response containing user repositories" do
    {:ok, response} = File.read("test/sample_data/elixir_repos_response.json")

    repo = TransformResponse.extract_repos(response) |> List.first

    assert repo.name == "docs"
    assert repo.full_name == "elixir-lang/docs"
    assert repo.html_url == "https://github.com/elixir-lang/docs"
  end
end
