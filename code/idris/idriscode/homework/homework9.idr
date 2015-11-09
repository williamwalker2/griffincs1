
{-
This file describes the activities that I am going to do the rest of
the day.
The different fields will be: the name of the activity, how much
time I think it will require and is it a priority.
-}

record activity where
  constructor c
  name: String
  time: Nat
  priority: bool


uno: activity
uno = c "CS Homework" 60 True

dos: activity
dos = c "Gym" 90 True

tres: activity
tres = c "Stochastic" 120 True

cuatro: activity
cuatro = c "Monday Night Football" 180 False

cinco: activity
cinco = c "Catch up on Reading" 7000000 True

seis: activity
seis = c "Prepare for Interview" 180 True
