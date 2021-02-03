# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :transferdrop,
  ecto_repos: [Transferdrop.Repo]

# Configures the endpoint
config :transferdrop, TransferdropWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+RHt/M3WMvWLd2UEaOR2Xtk2Ncbq93WO3MY15A9dCkqqQ7buUeE+B4VDimrKM1eH",
  render_errors: [view: TransferdropWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Transferdrop.PubSub,
  live_view: [signing_salt: "8RK7+Req"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
