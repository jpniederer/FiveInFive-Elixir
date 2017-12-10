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