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
    k n = big - small
      where
        big = read $ reverse m
        small = read m
        m = sort $ show n
