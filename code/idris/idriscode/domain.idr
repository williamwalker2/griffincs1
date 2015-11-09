module domain

import bool
import relation

record Stock where
    constructor mkStock
    name : String
    ticker : String
    price: Nat
    dividend: bool


f: Stock
f = mkStock "Ford" "F" 15 true

vrsk: Stock
vrsk = mkStock "Verisk Analytics" "VRSK" 80 false

csx: Stock
csx = mkStock "CSX Transportation" "CSX" 27 true

amat: Stock
amat = mkStock "Applied Materials" "AMAT" 16 true

key: Stock
key = mkStock "Key Corp" "KEY" 13 true

gold: Stock
gold = mkStock "Gold ETF" "GOLD" 69 false

apple: Stock
apple = mkStock "Apple" "AAPL" 111 true
