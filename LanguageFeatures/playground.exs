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

