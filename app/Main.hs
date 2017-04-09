module Main where

import Game
import Character
import GameMap

main :: IO ()
main = do
  putStrLn "Welcome to The End of the World!"
  putStrLn "Please create your character\n"
  putStrLn "What will you call them?"
  name <- getLine
  putStrLn "What are their attributes?"
  putStrLn "Strength: "
  str <- getLine
  putStrLn "Intelligence: "
  intel <- getLine
  putStrLn "Stamina: "
  stam <- getLine
  putStrLn (show (createCharacter name 100 (createStats (read str::Int) (read intel::Int) (read stam::Int))))
  return ()
