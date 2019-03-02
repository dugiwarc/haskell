-- Comments
{-
    Comments
-}

import Data.List
import System.IO

-- main = do
--     putStrLn "What's your name"
--     name <- getLine
--     putStrLn("Hello " ++ name)

-- addMe :: Int -> Int -> Int

-- addMe x y = x + y

-- whatAge :: Int -> String

-- whatAge 16 = "You can drive"

-- whatAge x  = "Nothing important"

-- batAvgRating :: Double -> Double -> String

-- batAvgRating hits atBats
--     | avg <= 0.200 = "Terrible Batting Average"
--     | avg <= 0.250 = "Average Player"
--     | avg <= 0.280 = "You are doing pretty good"
--     | otherwise = "You're a superstar"
--     where avg = hits / atBats


-- getListItems :: [Int] -> String

-- getListItems(x:xs) = "Your list starts with " ++ show x ++ " and the rest " ++ show xs

-- getAddFunc :: Int -> (Int -> Int)
-- getAddFunc x y = x + y 
-- adds3 = getAddFunc 3 
-- bun = adds3 5

-- data Customer = Customer String String Double
--     deriving Show

-- tomSmith :: Customer
-- tomSmith = Customer "Tom Smith" "123 Main" 20.50
-- getBalance :: Customer -> Double
-- getBalance (Customer _ _ b) = b

-- data RPS = Rock | Paper | Scissors

-- shoot :: RPS -> RPS -> String
-- shoot Paper Rock = "Paper Beats Rock"
-- shoot Rock Scissors = "Rock Beats Scissors"
-- shoot Scissors Paper = "Scissors Beat Paper"
-- shoot Scissors Rock = "Scissors Loses to Rock"
-- shoot Paper Scissors = "Paper Loses to Scissors"
-- shoot Rock Paper = "Rock Loses to Paper"
-- shoot _ _ = "Error"

-- data Shape = Circle Float Float Float | Rectangle Float Float
--     deriving Show

-- area :: Shape -> Float

-- area(Circle _ _ r) = pi * r ^ 2

-- sumValue = putStrLn (show(1 + 2))
-- sumValue2 = putStrLn . show $ 1 + 2

-- areaOfCircle = area (Circle 50 60 20)

-- sayHello = do
--     putStrLn "What's your name"
--     name <- getLine
--     putStrLn $ "Hello " ++ name

writeToFile = do
    theFile <- openFile "test.txt" WriteMode
    hPutStrLn theFile ("Random line of text")
    hClose theFile


readFromFile = do
    theFile2 <- openFile "test.txt" ReadMode
    contents <- hGetContents theFile2
    putStr contents
    hClose theFile2