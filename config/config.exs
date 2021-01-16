# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :testheroku,
  ecto_repos: [Testheroku.Repo]

# Configures the endpoint
config :testheroku, TestherokuWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "wmdS3LT/fJqjU4aLAOdRLq25dBjEofidrpzRuhMzjOd1ZAQNO+FrqQ/k3m1ewtjG",
  render_errors: [view: TestherokuWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Testheroku.PubSub,
  live_view: [signing_salt: "qqplGuFv"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
