module QuickCheck where

import Actions
import World


instance Arbitrary Direction where
    arbitrary = oneOf [return North,
                       return South,
                       return East,
                       return West]

instance Arbitrary Object where
    arbitrary = oneOf [return 
         
    ]



prop_remove :: [Object] -> Bool 
prop_remove xs = 