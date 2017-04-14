module Movement(
  Location,
  Direction,
  move
) where

data Location = Location {
  xPos :: Int,
  yPos :: Int
}

data Direction = North | South | East | West

move :: Direction -> Location
move North = Location 0 1
move South = Location 0 (-1)
move West = Location (-1) 0
move East = Location 1 0
