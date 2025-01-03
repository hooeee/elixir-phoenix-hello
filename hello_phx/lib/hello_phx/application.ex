defmodule HelloPhx.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      HelloPhxWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: HelloPhx.PubSub},
      # Start Finch
      {Finch, name: HelloPhx.Finch},
      # Start the Endpoint (http/https)
      HelloPhxWeb.Endpoint,
      # Start a worker by calling: HelloPhx.Worker.start_link(arg)
      # {HelloPhx.Worker, arg}
      HelloPhx.Repo
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: HelloPhx.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    HelloPhxWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
