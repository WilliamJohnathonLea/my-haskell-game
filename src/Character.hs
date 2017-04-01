module Character(
  Character,
  Stats,
  createCharacter,
  createStats,
  getStrength,
  getIntelligence,
  getStamina
) where

data Stats = Stats {
  strength :: Int,
  intelligence :: Int,
  stamina :: Int
}

data Character = Character {
  name :: String,
  health :: Int,
  stats :: Stats
}

instance Show Character where
  show c = "Character: " ++ (show $ name c)
    ++ "\nStats:\n\tStrength: " ++ (show $ getStrength c)
    ++ "\n\tIntelligence: " ++ (show $ getIntelligence c)
    ++ "\n\tStamina: " ++ (show $ getStamina c)

createCharacter :: String -> Int -> Stats -> Character
createCharacter n h s = Character n h s

createStats :: Int -> Int -> Int -> Stats
createStats str intel stam = Stats str intel stam

getStrength :: Character -> Int
getStrength c = strength $ stats c

getIntelligence :: Character -> Int
getIntelligence c = intelligence $ stats c

getStamina :: Character -> Int
getStamina c = stamina $ stats c
