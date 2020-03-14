defmodule FlibustaTest do
  use ExUnit.Case
  doctest Flibusta

  test "greets the world" do
    assert Flibusta.hello() == :world
  end
end
