-- |
-- A berserk collection of @contrazip@ functions with arities of up to 42.
-- 
-- Why 42?
-- Well, naturally, because it's the answer to the ultimate question of life,
-- the universe and everything.
-- 
-- It's exported as a separate module from "Contravariant.Extras"
-- only to not pollute its documentation.
-- The "Contravariant.Extras" module still reexports this module,
-- so you can simply import that only.
-- 
module Contravariant.Extras.Contrazip where

import Contravariant.Extras.Prelude
import qualified Contravariant.Extras.TH.Ast as TH


-- Generate the @contrazip@ functions:
return (join (map (TH.contrazipDecs "contrazip") (reverse [2..42])))

