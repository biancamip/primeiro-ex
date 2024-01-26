defmodule Primeiro.Aplicacao do
  use Application

  @impl true
  def start(_, _) do
    pid =
      spawn(fn ->
        "starting Primeiro"
        |> IO.puts()
      end)

    {:ok, pid}
  end
end
