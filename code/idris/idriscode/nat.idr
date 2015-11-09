module nat

import bool
import pair
import Serialize
import eq

data nat = O | S nat


||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false


||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

||| return true if argument is odd otherwise false
oddb: nat -> bool
oddb n = not (evenb n)

||| given a pair of natural numbers, return its sum
add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)


||| given a pair of natural numbers, return its sum
mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add (mult n m) m


fact: nat -> nat
fact O = (S O)
fact (S n) = mult (fact n) (S n)

sub: nat -> nat -> nat
sub O (S n) = O
sub (S n) O = S n
sub (S n) (S m) = sub n m

exp: nat -> nat -> nat
exp x O = (S O)
exp O x = O
exp x (S n) = mult x (exp x n)

lep: nat -> nat -> bool
lep O O = true
lep O (S n)= true
lep (S n) O = false
lep (S n) (S m) = lep n m


eqp: nat -> nat -> bool
eqp O O = true
eqp (S n) O = false
eqp (S n) (S m) = eqp n m


gtp: nat -> nat -> bool
gtp O O = true
gtp O (S n) = false
gtp (S n) O = true
gtp (S n) (S m) = gtp n m

gep: nat -> nat -> bool
gep n m = not (lep n m)

ltp: nat -> nat -> bool
ltp n m = not (gtp n m)

--instance eq nat where
--  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ (toString n)
