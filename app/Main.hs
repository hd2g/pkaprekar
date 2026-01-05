module Main (main) where

import Prelude

import Data.Foldable (for_)
import System.Environment (getArgs)
import Text.Read (readMaybe)

import Kaprekar

main :: IO ()
main = do
  args <- getArgs
  case args of
    [x] ->
      case readIntMaybe x of
        Just n -> flip for_ print $ take n kaprekars
        Nothing -> putStrLn $ "Invalid nat: " ++ x
    _ -> putStrLn $ "***Invalid argument***"

readIntMaybe :: String -> Maybe Int
readIntMaybe = readMaybe
