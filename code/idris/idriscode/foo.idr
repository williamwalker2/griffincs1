module foo

import list
import nat

--binary operator
--identity element
--type of element in the list

fancy: (a -> a -> a) -> a ->  (list a) -> a
fancy f id nil = id
fancy f id (h::t) = f (h) (fancy f id t)
