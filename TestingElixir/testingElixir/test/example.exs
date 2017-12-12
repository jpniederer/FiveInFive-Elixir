defmodule Example do
  use ExUnit.case
  doctest TestingElixir

  test "Puts :hello atom" do
    assert TestingElixir.hello() == :hello
  end
end