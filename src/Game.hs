module Game(
  Game,
  newGame
) where

import Character
import GameMap

data Game = Game {
  player :: Character,
  gameMap :: [Tile]
} deriving (Show)

newGame :: Character -> [Tile] -> Game
newGame c ts = Game c ts
