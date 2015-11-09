module Personclass

import bool

record Person where
  constructor mkPerson
  name : String
  age : Nat
  height: Nat
  gender: bool

--functions

setName: Person -> String -> Person
setName p n = record { name = n } p

setAge: Person -> Nat -> Person
setAge p a = record { age = a } p

setHeight: Person -> Nat -> Person
setHeight p h = record { height = h } p



---projection functions ("getters")

---getName': Person' -> String
---getName' (mkPerson name age height gender) = name
