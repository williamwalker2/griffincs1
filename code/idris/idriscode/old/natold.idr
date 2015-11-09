module nat

import bool
import pair

%default total

data nat = O | S nat

||| returns true if the argument is (represents) 0, otherwise false
isZero: nat -> bool
isZero O = true
isZero (S _) = false

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

|||return true if the argument is even, otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

||| given a pair of natural numbers, return its sum
addp: pair nat nat -> nat
addp (mkPair O m) = m
addp (mkPair (S n) m) = S (addp (mkPair n m))


||| given a pair of natural numbers, return its sum
multp: pair nat nat -> nat
multp (mkPair O m) = O
multp (mkPair (S n) m) = addp (mkPair (multp (mkPair n m)) m)


factp: nat -> nat
factp O = (S O)
factp (S n) = multp (mkPair (factp n) (S n))

subp: pair nat nat -> nat
subp (mkPair O (S n)) = O
subp (mkPair (S n) O) = S n
subp (mkPair (S n) (S m)) = subp (mkPair n m)

expp: pair nat nat -> nat
expp (mkPair x O) = (S O)
expp (mkPair O x) = O
expp (mkPair x (S n)) = multp (mkPair x (expp (mkPair x n)))

lep: pair nat nat -> bool
lep (mkPair O O) = true
lep (mkPair O (S n))= true
lep (mkPair (S n) O) = false
lep (mkPair (S n) (S m)) = lep (mkPair n m)


eqp: pair nat nat -> bool
eqp (mkPair O O) = true
eqp (mkPair (S n) O) = false
eqp (mkPair (S n) (S m)) = eqp (mkPair (n) (m))


gtp: pair nat nat -> bool
gtp (mkPair O O) = true
gtp (mkPair O (S n)) = false
gtp (mkPair (S n) O) = true
gtp (mkPair (S n) (S m)) = gtp (mkPair n m)

gep: pair nat nat -> bool
gep (mkPair n m) = not (lep (mkPair n m))

ltp: pair nat nat -> bool
ltp (mkPair n m) = not (gtp (mkPair n m))


add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

pf: nat -> nat
pf = add (S (S O))
