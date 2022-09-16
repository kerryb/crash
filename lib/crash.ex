defmodule Crash do
  def start_link(arg), do: GenServer.start_link(__MODULE__, arg, name: __MODULE__)

  def init(_) do
    {:ok, nil}
  end

  def run do
    IO.puts("Calling crashing genserver")
    Crash.Worker.crash()
    IO.puts("Done")
  end
end
