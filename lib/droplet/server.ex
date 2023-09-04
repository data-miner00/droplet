defmodule Droplet.Server do
  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, :ok, name: :server)
  end

  def init(:ok) do
    {:ok, %{}} # empty map state
  end

  def send(msg) do
    GenServer.cast(:server, {:msg, msg})
  end

  @doc """
    After killing, the supervision tree might respawn the process
  """
  def shutdown() do
    Process.whereis(:server) |> Process.exit(:kill)
  end
end
