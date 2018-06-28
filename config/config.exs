# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :imageer,
  ecto_repos: [Imageer.Repo]

# Configures the endpoint
config :imageer, ImageerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "l6yACDGMmG128CcyIQnMFUyFhfjVKE1XuJHXEkMmu++YwXIsjDzz4M3umOm3t0WZ",
  render_errors: [view: ImageerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Imageer.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
