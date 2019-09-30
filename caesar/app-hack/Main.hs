-- crack is taken from:
-- Hutton, Graham. Programming in Haskell (p. 54). Cambridge University Press.
module Main where

import System.IO
import Lib

main = crack <$> getLine >>= putStrLn
