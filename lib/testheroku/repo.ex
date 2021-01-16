defmodule Testheroku.Repo do
  use Ecto.Repo,
    otp_app: :testheroku,
    adapter: Ecto.Adapters.Postgres
end
