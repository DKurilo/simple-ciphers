module Main where

import System.IO
import Lib

main = do
    i <- (read :: String -> Int) <$> getLine
    enc i <$> getLine >>= putStrLn
