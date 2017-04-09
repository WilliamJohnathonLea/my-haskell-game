module Main where

import Game
import Character
import GameMap

intro :: IO ()
intro = do
  putStrLn "Welcome to The End of the World!"
  putStrLn "Please create your character\n"
  return ()

characterCreation :: IO Character
characterCreation = do
  putStrLn "What will you call them?"
  name <- getLine
  putStrLn "What are their attributes?"
  putStrLn "Strength:"
  str <- getLine
  putStrLn "Intelligence:"
  intel <- getLine
  putStrLn "Stamina:"
  stam <- getLine
  return (createCharacter name 100 (createStats (read str::Int) (read intel::Int) (read stam::Int)))

gameCreation :: Character -> IO Game
gameCreation c = do
  putStrLn "The adventure begins..."
  return (newGame c (generateMap 10 10))

main :: IO ()
main = do
  intro
  character <- characterCreation
  gameCreation character
  return ()
