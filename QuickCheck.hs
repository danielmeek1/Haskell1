module QuickCheck where

import Actions
import World


instance Arbitrary Direction where
    arbitrary = oneOf [return North,
                       return South,
                       return East,
                       return West]

instance Arbitrary Object where
    arbitrary = oneOf [return Mug,
                       return FullMug,
                       return CoffeePot,
                       return Key,
                       return Mask,
                       return Wallet,
                       return Matric]

instance Arbitrary Rooms where
    arbitrary = oneOf [return Bedroom,
                       return Kitchen,
                       return Hall,
                       return Key,
                       return Street,
                       return Garden]
                   



prop_remove :: [Object] -> Bool 
prop_remove xs = findObj xs 
