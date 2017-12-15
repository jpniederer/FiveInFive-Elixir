defmodule BinarySearchTest do
  use ExUnit.Case
  doctest BinarySearch

  test "Binary Search present" do
    assert BinarySearch.binarySearch([1, 2, 3, 4, 5, 6, 7, 8], 7) > 0
  end

  test "is not present" do
    assert BinarySearch.binarySearch([1, 2, 3, 4, 5, 6, 7, 8], 17) == -1
  end
end