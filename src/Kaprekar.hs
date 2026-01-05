module Kaprekar where

import Prelude
import Data.List (sort)

kaprekars :: [Integer]
kaprekars =
  [ x
  | x <- [0..]
  , mod x 9 == 0
  , k x == x
  ]
  where
    k n = big n - small n
    big = read . reverse . sort . show
    small = read . sort . show
