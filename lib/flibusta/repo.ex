defmodule Flibusta.Repo do
  use Ecto.Repo,
    otp_app: :flibusta,
    adapter: Ecto.Adapters.MyXQL
end
