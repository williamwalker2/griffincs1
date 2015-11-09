module dna

import pair
import list

data base = A | T | C | G

molecule : Type
molecule = pair base base

tot: list base
tot = A::T::C::G::nil

isBase: base -> base -> Nat
isBase A A = 1
isBase T T = 1
isBase C C = 1
isBase G G = 1
isBase _ _ = 0


complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C

zip: base -> molecule
zip a = mkPair a (complement_base a)

complement_strand: list base -> list base
complement_strand nil = nil
complement_strand (h::t) = complement_base h :: complement_strand(t)

strand1: list molecule -> list base
strand1 a = map fst a

strand2: list molecule -> list base
strand2 a = map snd a

complete: list base -> list molecule
complete a = map zip a

countBase: list base -> base -> Nat
countBase a b = list.foldr plus 0 (map (isBase b) a)
