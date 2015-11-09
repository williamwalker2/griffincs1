module set

import list
import eq
import ite
import bool

|||mkSet is meant to be private
data set a = mkSet (list a)

||| a starting point for building any set
new_set: set a
new_set = mkSet nil

set_insert: a -> set a -> set a
set_insert v (mkSet l) = mkSet (v::l)

subset_elements: (eq a) => list a -> list a -> bool
subset_elements nil list2 = true
subset_elements (h::t) list2 = ite (member h list2)
                                   (subset_elements t list2)
                                    false

same_elements: (eq a) => list a-> list a -> bool
same_elements ls1 ls2 = subset_elements ls1 ls2

eql_set: (eq a) => set a -> set a -> bool
eql_set (mkSet ls1) (mkSet ls2) = same_elements ls1 ls2


instance (eq a) => eq (set a) where
  eql s1 s2 = eql_set s1 s2
