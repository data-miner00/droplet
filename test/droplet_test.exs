defmodule DropletTest do
  use ExUnit.Case
  doctest Droplet

  test "greets the world" do
    assert Droplet.hello() == :world
  end
end
