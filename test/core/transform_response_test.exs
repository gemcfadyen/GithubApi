defmodule Githubapi.Core.TransformResponseTest do
  use ExUnit.Case, async: true
  alias Githubapi.Core.TransformResponse

  test "parses response containing user repositories" do
    {:ok, response} = File.read("test/sample_data/elixir_repos_response.json")

    IO.puts("--------------------------")
    IO.inspect(response)
    IO.puts("--------------------------")

    repo = TransformResponse.extract_repos(response) |> List.first

    assert repo.full_name == "elixir-lang/docs"
  end
end
