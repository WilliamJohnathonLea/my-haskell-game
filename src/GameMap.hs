module GameMap(
  generateMap,
  findTile
) where

data Tile = Tile {
  xPoint :: Int,
  yPoint :: Int
} deriving (Show)

generateMap :: Int -> Int -> [Tile]
generateMap w h = [Tile x y | x <- [1..w], y <- [1..h]]

findTile :: Int -> Int -> [Tile] -> Maybe Tile
findTile _ _ [] = Nothing
findTile x y (t:ts)
  | (xPoint t) == x && (yPoint t) == y = Just t
  | otherwise = findTile x y ts
