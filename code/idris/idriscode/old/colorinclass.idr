module colors

import pair

data primary = red | blue | yellow
data mixed = violet | deepred | green | deepblue | orange | deepyellow

f: pair primary primary -> mixed
f pair red blue = violet
