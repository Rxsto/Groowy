# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :groowy, GroowyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1j80576cX4vWRwxMWr/Hg5/1kjFD/OHsU6u70uWq0uMWRrMzBFdoAw7Xe4Fg1kR+",
  render_errors: [view: GroowyWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Groowy.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
