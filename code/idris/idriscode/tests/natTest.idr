module natTest

import nat
import pair
import bool

--ntest1 should return false
ntest1: bool
ntest1 = isZero (S (S (S O)))

--ntest2 should return S (S (S (S (S (S O)))))
ntest2: nat
ntest2 = succ fv

--ntest3 should return S (S (S O))
ntest3: nat
ntest3 = pred (fr)

--ntest4 should return true
ntest4: bool
ntest4 = evenb (fr)

--ntest5 should return S (S (S (S (S (S (S (S (S O)))))))) or 9
ntest5: nat
ntest5 = addp (mkPair fr fv)

--ntest6 should return 20
ntest6: nat
ntest6 = multp (mkPair fr fv)

--ntest7 should return 6
ntest7: nat
ntest7 = factp (r)

--ntest8 should return 1
ntest8: nat
ntest8 = subp (mkPair fv fr)

--ntest9 should return 16
ntest9: nat
ntest9 = exp (mkPair fr t)

--ntest10 should return true
ntest10: bool
ntest10 = lep (mkPair r fv)

--ntest11 should return false
ntest11: bool
ntest11 = eqp (mkPair r t)

--ntest12 should return true
ntest12: bool
ntest12 = gtp (mkPair fv t)

--ntest13 should return false
ntest13: bool
ntest13 = gep (mkPair fr fr)

--ntest14 should return true
ntest14: bool
ntest14 = ltp (mkPair O o)
