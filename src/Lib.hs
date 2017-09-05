module Lib where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

someFunc2 :: IO ()
someFunc2 = putStrLn "someFunc sts "

-- a = "asrt"

-- Code must complain with PUC
newtype Code = Code String deriving (Show)

-- Name is a String, but will make no exceptions, we will match what we have on
-- RDBMS
newtype Name = Name String deriving (Show)

-- Must have a two decimal numbers
newtype Value = Value Float deriving (Show)

newtype Account = Account (Code, Name) deriving (Show)
newtype Item    = Item (Account, Value) deriving (Show)

newtype Entry   = Entry [Item] deriving (Show)

c0 = Code "1101"
n0 = Name "Caja"

c1 = Code "2202"
n1 = Name "Bancos"

a0 = Account (c0,n0)
a1 = Account (c1,n1)

v0 = Value 98.90
v1 = Value 14.90

i0 = Item (a0, v0)
i1 = Item (a1, v1)

e0 = Entry [i0, i1]

fst' :: (a, b) -> a
fst' (a,b) = a

--getCode :: Account a -> Code
--etCode a = Code "1101"

--isValidEntry :: Entry -> Bool
--isValidEntry entry =


--data Class theclass = [Account] | [Class]
--data Chart = [Class]

--newtype Chart chart = Chart [chart]

--newtype Chart = [Clax]
--data Clax a = Empty | Accountx | [Clax]

-- data Configuration = Configuration
--                      { username      :: String
--                      , localHost     :: String
--                      , remoteHost    :: String
--                      , isGuest       :: Bool
--                      , isSuperuser   :: Bool
--                      , currentDir    :: String
--                      , homeDir       :: String
--                      , timeConnected :: Integer
--                      }

-- data Tree1 a = Leaf a | Node (Tree1 a) a (Tree1 a) deriving Show
-- t = Node (Node (Leaf 1) 3 (Leaf 4)) 5 (Node (Leaf 6) 7 (Leaf 9)) :: Tree1 Int
-- --Node (Node (Leaf 1) 3 (Leaf 4)) 5 (Node (Leaf 6) 7 (Leaf 9))

-- data Tree2 a = Leaf a | Node (Tree2 a) (Tree2 a) deriving Show
-- t = Node (Node (Leaf 1) (Leaf 4)) (Node (Leaf 6) (Leaf 9)) :: Tree2 Int
-- --Node (Node Leaf 3 Leaf) 5 (Node Leaf 7 Leaf)

-- data Tree3 a = Leaf  | Node (Tree3 a) a (Tree3 a) deriving Show
-- t = Node (Node (Leaf ) 3 (Leaf )) 5 (Node (Leaf ) 7 (Leaf )) :: Tree3 Int
-- --Node (Node Leaf 3 Leaf) 5 (Node Leaf 7 Leaf)

-- data Tree4 a b = Leaf a | Node (Tree4 a b) b (Tree4 a b) deriving Show
-- t = Node (Node (Leaf 1) 'a' (Leaf 4)) 'b' (Node (Leaf 6) 'c' (Leaf 9)) :: Tree4 Int Char
-- -- Node (Node (Leaf 1) 'a' (Leaf 4)) 'b' (Node (Leaf 6) 'c' (Leaf 9))

-- data Tree5 a = Node a [Tree5 a] deriving Show
-- t = Node 1 [Node 2 []] :: Tree5 Int
-- t = Node 5 [Node 3 [Node 7 []]] :: Tree5 Int

-- data Tree6 a b = Account a | Category b | Node b [(Tree6 a b)] deriving Show
-- t = Node 'a' [Node 'c' [Account 4,Node 'e' [Account 5, Category '6']] , Node 'e'] :: Tree6 Int Char
-- t = Node 'a' [Node 'c' [Account 4,Node 'e' [Account 5, Category '6']] , Category 'e' ] :: Tree6 Int Char

data Chart a b = Leaf a | Node b [(Chart a b)] deriving Show
--t = Node 'a' [Node 'c' [Leaf 4,Node 'e' [Leaf 5, Node '6' []]] , Node 'e' []] :: Chart Int Char

--t= a0 :: Chart Account Char
--data ChartX a b = Leaf a | Node b [(Chart a b)] deriving Show

t = Node a0 [ Leaf a1 ] :: Chart Account Account
--t = Leaf a1 :: Chart Account Account
