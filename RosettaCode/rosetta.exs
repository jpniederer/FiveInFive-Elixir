# Variables
x = 42
y = 2

# List
words = ["hi", "hello", "howdy"]

# Function
logThenReturn = fn (t) -> 
  IO.puts t
  t
end

someValue = logThenReturn.("a string")

# Tuple
t = {"key", 6}

# List Comprehensions (a form of looping)
numbers = for x <- 1..10, do: x

# Recursion
defmodule Recursion do
  def power(x, y) do
    powerIter(x, y, 1)
  end

  defp powerIter(x, y, total) do
    if y <= 0 do
      1 * total
    else
      powerIter(x, y - 1, total * x)
    end
  end
end
    