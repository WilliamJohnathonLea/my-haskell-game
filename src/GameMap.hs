module GameMap(
  generateMap
) where

data Tile = Tile {
  xPoint :: Int,
  yPoint :: Int
} deriving (Show)

generateMap :: Int -> Int -> [Tile]
generateMap w h = [Tile x y | x <- [1..w], y <- [1..h]]

findTile :: Int -> Int -> [Tile] -> Maybe Tile
findTile _ _ [] = Nothing
findTile x y (t:ts) =
  if (xPoint t) == x && (yPoint t) == y
    then Just t
  else findTile x y ts