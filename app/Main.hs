module Main where

import Character

characterCreation :: IO ()
characterCreation = do
  putStrLn "What will you call them?"
  name <- getLine
  putStrLn "What are their attributes?"
  putStr "Strength: "
  str <- getLine
  putStr "Intelligence: "
  intel <- getLine
  putStr "Stamina: "
  stam <- getLine
  putStrLn (show (createCharacter name 100 (createStats (read str::Int) (read intel::Int) (read stam::Int))))
  return ()

main :: IO ()
main = do
  putStrLn "Welcome to The End of the World!"
  putStrLn "Please create your character\n"
  characterCreation
