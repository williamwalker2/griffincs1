module Bit

--Data Type
data Bit = zero | one
--Functions 
change: Bit -> Bit
change zero = one
change one = zero

data something = some | thing

what: something -> something
what some = thing
what thing = thing

id: Bit -> Bit
id one = one
id zero = zero

