defmodule Primeiro.Aplicacao do
  use Application

  @impl true
  def start(_, _) do
    pid =
      spawn(fn ->
        IO.puts("bianca")
      end)

    {:ok, pid}
  end
end
