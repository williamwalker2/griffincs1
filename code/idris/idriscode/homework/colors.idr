module colors

import pair
import bool

%default total


data color = red | green | blue | magenta | yellow | cyan

comp: color-> color
comp red = cyan
comp cyan = red
comp green = magenta
comp magenta = green
comp blue = yellow
comp yellow = blue

add: color -> bool
add red = true
add green = true
add blue = true
add _ = false

sub: color -> bool
sub c = not (add c)


