module Kaprekar where

import Prelude

import Data.List (sort)

kaprekars :: [Integer]
kaprekars =
  [ x
  | x <- 0 : [9,18..]
  , k x == x
  ]
  where
    k n = big n - small n
    big = read . reverse . sort . show
    small = read . sort . show
