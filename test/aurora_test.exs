defmodule AuroraTest do
  use ExUnit.Case
  doctest Aurora

  test "greets the world" do
    assert Aurora.hello() == :world
  end
end
