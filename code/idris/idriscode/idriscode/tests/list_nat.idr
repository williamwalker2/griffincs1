module list_nat

import nat
import pair

data list_nat = nil | cons nat list_nat

lO: list_nat
lO = nil

l1: list_nat
l1 = cons O nil

l2: list_nat
l2 = (cons (S O) (cons (S (S O)) nil))

l3: list_nat
l3 = (cons (S O) (cons (S (S O)) (cons (S (S (S O))) nil)))

length: list_nat -> nat
length nil = O
length (cons n l') = S (length l')

len_l3: nat
len_l3 = length (l3)

{-
length l3
length (cons (S O) (cons (S (S O)) (cons (S (S (S O))) nil)))
S (length (cons (S (S O)) (cons (S (S (S O))) nil)))
S (S (length ((cons (S (S (S O))) nil))))
S ( S (S length nil))
S (S (S O))
-}

appd: list_nat -> list_nat -> list_nat
appd (nil) (cons nat list_nat) = cons nat list_nat
appd (cons n lone) l2 = cons n (appd lone l2)
