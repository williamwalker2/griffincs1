module boolTest

import bool
import pair

b1: bool
b1 = true

b2: bool
b2 = true

b3: bool
b3 = false

b4: bool
b4 = not true

b5: bool
b5 = not b1

b6: bool
b6 = not (not b5)

--test cases start here
--test1 should return the value true
test1: bool
test1 = id true

--test2 should return the value false
test2: bool
test2 = not true

--test3 should return the value true
test3: bool
test3 = constTrue false

--test4 should return the value false
test4: bool
test4 = constFalse true

--test5 should return the value false
test5: bool
test5 = andp (mkPair true false)

--test6 should return the value true
test6: bool
test6 = orp (mkPair true false)

--test7 should return the value true
test7: bool
test7 = nand (mkPair true false)

--test8 should return the value false
test8: bool
test8 = xor (mkPair true true)

--test functions for pand

pand1: bool
pand1 = pand true true
--expect true

pand2: bool
pand2 = pand true false
--expect false

pand3: bool
pand3 = pand false true
--expect false

pand4: bool
pand4 = pand false false
-- expect false

--test functions for por
por1: bool
por1 = por true true
--expect true

por2: bool
por2 = por true false
--expect true

por3: bool
por3 = por false true
--expect true

por4: bool
por4 = por false false
--expect false

--test cases for pxor
pxor1: bool
pxor1 = pxor true true
--expect false

pxor2: bool
pxor2 = pxor true false
--expect true

pxor3: bool
pxor3 = pxor false true
--expect true

pxor4: bool
pxor4 = pxor false false
--expect false

--test cases for pnand
pnand1: bool
pnand1 = pnand true true
--expect false

pnand2: bool
pnand2 = pnand true false
--expect true

pnand3: bool
pnand3 = pnand false true
--expect true

pnand4: bool
pnand4 = pnand false false
--expect true
