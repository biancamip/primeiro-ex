defmodule PrimeiroTest do
  use ExUnit.Case
  doctest Primeiro

  test "greets the world" do
    assert Primeiro.hello() == :world
  end
end
