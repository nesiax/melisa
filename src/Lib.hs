module Lib where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

someFunc2 :: IO ()
someFunc2 = putStrLn "someFunc sts "

-- a = "asrt"

-- Code must complain with PUC
newtype Code = Code String deriving (Show)

-- Name is a String, but will make no exceptions, we will match what we have on RDBMS
newtype Name = Name String deriving (Show)

-- Must have a two decimal numbers
newtype Value = Value Float deriving (Show)

data Account = Account Code Name deriving (Show)
data Item    = Item Account Value deriving (Show)

newtype Entry   = Entry [Item] deriving (Show)

c0 = Code "1101"
n0 = Name "Caja"

c1 = Code "2202"
n1 = Name "Bancos"

a0 = Account c0 n0
a1 = Account c1 n1

v0 = Value 98.90
v1 = Value 14.90

i0 = Item a0 v0
i1 = Item a1 v1

e0 = Entry [i0, i1]
