# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :dramimi,
  ecto_repos: [Dramimi.Repo]

# Configures the endpoint
config :dramimi, DramimiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7qUc1PmFq9O+I2BCbpct0JcJl3ANKFO2RhjFqmpv1KwrrPYArL/NGDggMaMvoJsF",
  render_errors: [view: DramimiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Dramimi.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "SaW2zWwbB9MAZgBz/sw1+qSrkWBi74hn"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
