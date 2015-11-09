module domainstuff

import domain
import relation
import list
import bool
import pair

portfolio1: list Stock
portfolio1 = f::vrsk::csx::amat::nil

portfolio2: list Stock
portfolio2 = key::apple::gold::nil

stocks: list Stock
stocks = portfolio1 ++ portfolio2

prices: list Nat
prices = map price stocks

tickers: list String
tickers = map ticker stocks

names: list String
names = map name stocks

dividendstocks: list Stock
dividendstocks = filter dividend stocks

sumofprices: Nat
sumofprices = list.foldr plus 0 (map price stocks)

isStock: Stock -> bool
isStock f = true
isStock vrsk = true
isStock csx = true
isStock amat = true
isStock key = true
isStock gold = true
isStock apple = true

averageprice: pair Nat Nat
averageprice = ave_rel stocks isStock price

sumofprices': Nat
sumofprices' = sum_rel stocks isStock price

numberofstocks: Nat
numberofstocks = count_rel stocks isStock

tickers': String
tickers' = query2 stocks isStock ticker (++) ""

tickers'': list String
tickers'' = map ticker stocks
