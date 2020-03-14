defmodule Flibusta.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Starts a worker by calling: Flibusta.Worker.start_link(arg)
      # {Flibusta.Worker, arg}

      Flibusta.Repo,
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Flibusta.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
