use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :githubapi, Githubapi.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

config :githubapi, :github_client, Githubapi.Core.FakeClient

# Configure your database
config :githubapi, Githubapi.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "githubapi_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
