{-# LANGUAGE TemplateHaskell #-}
module QuickCheck where
import Test.QuickCheck
import Test.QuickCheck.All
import Actions
import World


instance Arbitrary Directions where
    arbitrary = oneof [return North,
                       return South,
                       return East,
                       return West]

instance Arbitrary Object where
    arbitrary = oneof [return mug,
                       return fullmug,
                       return coffeepot,
                       return key,
                       return mask,
                       return wallet,
                       return matric,
                       return mazemap]

instance Arbitrary Room where
    arbitrary = oneof [return bedroom,
                       return kitchen,
                       return hall,
                       return street,
                       return garden,
                       return pantry]

                 



--prop_remove :: [Object] -> Bool 
--prop_remove xs = findObj xs 


--Check addObject return a room containing the object
prop_containsObject :: Object -> Room -> Bool
prop_containsObject o rm = objectHere (obj_name o) (addObject o rm) 

return []
runTests = $quickCheckAll