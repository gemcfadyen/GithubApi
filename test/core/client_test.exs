defmodule Githubapi.Core.ClientTest do
  use ExUnit.Case
  alias Githubapi.Core.Client

  @tag :integration
  test "fetches known repositories" do
    response = Client.get_repositories("elixir-lang")

    assert String.contains?(response, "elixir-lang/docs")
    assert String.contains?(response, "elixir-lang/ecto")
  end
end
