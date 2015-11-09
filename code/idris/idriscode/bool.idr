module bool

import pair
import Serialize
--import eq

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

and: bool -> bool -> bool
and true true = true
and _ _ = false

uf: bool -> bool
uf =  (and true)

or: bool -> bool -> bool
or false false = false
or _ _ = true

xor: bool -> bool -> bool
xor true true = false
xor false false = false
xor _ _ = true

nand: bool -> bool -> bool
nand true true = false
nand _ _ = true

instance Serialize bool where
  toString true = "True"
  toString false = "False"

eql_bool: bool -> bool -> bool
eql_bool true true = true
eql_bool false false = true
eql_bool _ _ = false

--instance eq bool where
--  eql b1 b2 = eql_bool b1 b2
