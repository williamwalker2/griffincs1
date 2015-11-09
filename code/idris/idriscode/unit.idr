module unit

import Serialize

data unit = mkUnit

id: unit -> unit
id mkUnit = mkUnit

instance Serialize unit where
  toString u = "()"
