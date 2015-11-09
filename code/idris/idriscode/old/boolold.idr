module bool

import pair

data bool = true | false

id: bool -> bool
--id true = true
--id false = false

id x = x

not: bool -> bool
not false = true
not true = false

constTrue: bool  -> bool
--constTrue true = true
--constTrue false = true
constTrue _ = true


constFalse: bool -> bool
--constFalse true = false
--constFalse false = false
constFalse _ = false


andp: pair bool bool -> bool
andp (mkPair true true) = true
andp _ = false

orp: pair bool bool -> bool
orp (mkPair false false) = false
orp _ = true

nand: pair bool bool -> bool
nand b = not (andp b)

xor: pair bool bool -> bool
xor (mkPair true false) = true
xor (mkPair false true) = true
xor _ = false

{-
There are 8 possible ways to fill in the result column
for a truth table for a binary boolean function and thus
there are exactly 8 such functions and no more.
-}

pand: bool -> bool -> bool
pand true = bool.id
pand false = constFalse

por: bool -> bool -> bool
por true = constTrue
por false = bool.id

pxor: bool -> bool -> bool
pxor true = not
pxor false = bool.id

pnand: bool -> bool -> bool
pnand true = not
pnand false = constTrue


-- binary functions (bool -> bool -> bool), implicit

and: bool -> bool -> bool
and true true = true
and _ _ = false

uf: bool -> bool
uf =  (and true)

or: bool -> bool -> bool
or false false = false
or _ _ = true
