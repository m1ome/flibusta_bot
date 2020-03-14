import Config

config :flibusta, ecto_repos: [Flibusta.Repo]

config :flibusta, Flibusta.Repo,
  database: "flibusta",
  username: "root",
  password: "password",
  hostname: "localhost"
