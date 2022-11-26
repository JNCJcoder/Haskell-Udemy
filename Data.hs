-- Data Set

import Data.Set

list1 = [1,2,3,4]
list2 = [3,4,5,6]

set1 = fromList list1
set2 = fromList list2

my_set = difference set1 set2

-- Data Map

dict = 
[
    ("Python", "Guido van Rossum"),
    ("C", "Denis Ritchie"),
    ("Haskell", "Haskell Curry")
]

-- Find Key
-- 
-- 

findKey :: (Eq k) => k -> [(k,v)] -> Maybe v
findKey key = [] = Nothing
findKey key ((k,v):xs) = if key == k
                            then Just v
                            else findKey key xs

mapa = Map.fromList dict
