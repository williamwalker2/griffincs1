module listExample

import list
import ite
import homework9
import nat
import bool
import Serialize

list1: list activity
list1 = uno::dos::tres::nil

list2: list activity
list2 = uno::dos::nil

tlist: list activity
tlist = uno::dos::tres::cuatro::cinco::seis::nil

b: list bool
b = map evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

w: list nat
w  = filter evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

mapname: list String
mapname = list.map name tlist

maptime: list Nat
maptime = map time tlist

s: String
s = toString l2
