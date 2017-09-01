module Lib
    ( String2
    , someFunc
    , someFunc2
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

someFunc2 :: IO ()
someFunc2 = putStrLn "someFunc"

type String2 = [Char]
