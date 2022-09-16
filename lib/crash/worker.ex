defmodule Crash.Worker do
  use GenServer
  def start_link(arg), do: GenServer.start_link(__MODULE__, arg, name: __MODULE__)
  def init(_), do: {:ok, nil}
  def crash, do: GenServer.call(__MODULE__, :unhandled)
end
