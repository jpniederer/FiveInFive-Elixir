defmodule TestingElixirTest do
  use ExUnit.Case
  doctest TestingElixir

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "another test, is false" do
    assert 1 - 10 == -9
  end
end
