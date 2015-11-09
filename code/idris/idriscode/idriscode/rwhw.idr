module intern
--data type that takes input of how well interview went

data interview = bad | fine | good
-- data type for return of which comapny I get
data company = settle | goal | reach

result: interview -> company
result bad = settle
result fine = goal
result good = reach
