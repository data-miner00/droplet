defmodule DropletTest do
  use ExUnit.Case
  doctest Droplet

  test "1 + 1" do
    assert 1 + 1 == 2
  end

  @tag tagged: true
  test "greets the world" do
    assert Droplet.hello() == :world
  end
end
