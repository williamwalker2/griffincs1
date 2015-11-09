module list

import nat
import bool
import ite
import pair
import option
import Serialize
import eq

infixr 7 ::, ++

data list a = nil | (::) a (list a)

--the functions

|||return the length of any given list
length: list a -> nat
length nil = O
length (h::t) = S (length t)


|||append as an infix operator
(++): list a -> list a -> list a
(++) nil l2 = l2
(++) (h::t) l2 = h::(t++l2)

|||map a function over the elements of a list
map: (a -> b) -> list a -> list b
map f nil = nil
map f (h::t) = (f h)::(map f t)

|||give a list and a predicate on elements
||| return the sublist of elements for which
||| for which the predicate is true
filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h::t) = ite (f h)
                      (h::(filter f t))
                          (filter f t)

foldr: (a -> a -> a) -> a ->  (list a) -> a
foldr f id nil = id
foldr f id (h::t) = f (h) (list.foldr f id t)

toStringList: (Serialize a) => list a -> String
toStringList nil = ""
toStringList (h::nil) = (toString h)
toStringList (h::t) = (toString h) ++ ", " ++ (toStringList t)


instance (Serialize a) => Serialize (list a) where
  toString l = "[" ++ (toStringList l) ++ "]"

member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h)
                        true
                        (member v t)

instance
