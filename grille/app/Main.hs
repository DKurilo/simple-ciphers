module Main where

import System.IO
import System.Random
import Control.Monad
import Lib

main :: IO ()
main = do
    let getInt = (read :: String -> Int) <$> getLine
    s <- getInt
    hq <- getInt
    let q = hq * 2
    let cs = [(x,y) | x <- [1..q], y <- [1..q]]
    let hcq = hq^2
    keys <- fst <$> foldM (\(ks, cs) i -> do
            k <- getStdRandom (randomR (1,i * 4))
            return ((cs !! (k - 1)):ks, removeRot k cs q)
        ) ([],cs) [hcq,(hcq - 1)..1]
    putStrLn (generateMatrix s q keys)
