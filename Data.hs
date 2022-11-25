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

