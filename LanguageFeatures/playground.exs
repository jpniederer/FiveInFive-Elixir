# Types
# Integers
a = 1
hexadecimal = 0xcad
octal = 0o453
binary = 0b1010

# Floating-Point Numbers (IEEE 754 precision, 10^308)
b = 1.230

# Atoms - constants that represent the name of something
:atom

# Tuples
t = { 1, 2 }

# Lists
l = [1, 2, 3, 4]
ll = l ++ l # Concat -> [1, 2, 3, 4, 1, 2, 3, 4]
onetwo = l -- [3, 4] # -> [1, 2]
isPresent = 1 in l

# Maps
players = %{ "Kyle" => 28, "Kris" => 17, "Anthony" => 44, "Javier" => 9 }
hendricksNumber = players["Kyle"]

# Dates
today = Date.new(2017, 12, 9)

# Equality
a === b # strict equality
a !== b # strict inequality
a == b # value equality
a != b # value inequality

# Anonymous Functions
fn
  (a, b) -> a + b
end

swap = fn { a, b } -> { b, a } end
swap.( { 3, 5 }) # -> { 5, 3 }

list_concat = fn (l1, l2) -> l1 ++ l2 end
sum = fn (a, b, c) -> a + b + c end
fb =
  fn
    (0, 0, _) -> "FizzBuzz"
    (0, _, _) -> "Fizz"
    (_, 0, _) -> "Buzz"
    (_, _, z) -> z
  end

fizzBuzz = fn (n) -> fb.(rem(n, 3), rem(n, 5), n) end
fizzBuzz.(11) # => 11
fizzBuzz.(15) # => "FizzBuzz"

# Logical Checks
testVal = 2
if testVal < 3 do
  IO.puts "<3"
else
  IO.puts "Not <3"
end

unless test < 3 do
  IO.puts "Not <3"
end

cond do
  testVal == 3 ->
    IO.puts "Not True"
  testVal == 1 ->
    IO.puts "Not True Either"
  testVal == 2 ->
    IO.puts "There we go, 2 = 2."
end

# Modules
# Modules allow us to define named functions that can be used in other places.
defmodule LearnElixir do
  @hoursToLearnSyntax 5

  def learnSyntax(hours) do
    if hours < @hoursToLearnSyntax do
      IO.puts "You need to work more on the syntax."
    else
      IO.puts "Good work, keep at it."
    end
  end

  def learnFeatures(hours) do
    if hours < 100 do
      IO.puts "You need to work more on the language features."
    else
      IO.puts "Good work, keep at it. You'll be a master soon."
    end
  end

  defp learnPrivately() do
    IO.puts "Take a break."
  end
end

# Pipe Operator
# The pipe operator is like nesting functions.
splitString = "This is a statement with no punctuation" |> String.split()
splitStringNoPipes = String.split "This is a statement with no punctuation"

# Comprehensions
listOfInts = [1, 2, 3, 4, 5, 6, 7, 8, 9]
oddInts = for x <- listOfInts, rem(x, 2) != 0, do: x
evenInts = for x <- 1..100, rem(x, 2) == 0, do: x