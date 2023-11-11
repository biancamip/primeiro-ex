defmodule Primeiro do
  @moduledoc """
  Documentation for `Primeiro`.
  """

  alias Primeiro.UFRGSClient

  @doc """
  Hello world.

  ## Examples

      iex> Primeiro.hello()
      :world

  """
  def hello do
    :world
  end

  def get_news do
    "/coperse" |> UFRGSClient.request() |> UFRGSClient.get_titles()
  end
end
