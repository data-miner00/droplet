defmodule Droplet.Application do
  use Application

  def start(_type, _args) do
    children = [
      Droplet.Server,
      Droplet.Scheduler,
    ]

    # https://hexdocs.pm/elixir/Supervisor.html
    {:ok, pid} = Supervisor.start_link(children, strategy: :one_for_one)

    Supervisor.count_children(pid)

    {:ok, pid}
  end
end
