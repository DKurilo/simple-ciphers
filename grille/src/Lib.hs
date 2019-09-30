module Lib
    ( removeRot,
      generateMatrix
    ) where

removeRot :: Int -> [(Int,Int)] -> Int -> [(Int, Int)]
removeRot k cs q = filter check cs
    where (x,y) = cs !! (k - 1)
          check (x', y') = not $ (x' == x && y' == y) || (x' == q - y + 1 && y' == x)
                           || (x' == q - x + 1 && y' == q - y + 1) || (x' == y && y' == q - x + 1)

generateMatrix :: Int -> Int -> [(Int,Int)] -> String
generateMatrix s q keys = "<svg width=\"" ++ ts ++ "mm\" height=\"" ++ ts ++ "mm\" version=\"1.1\" viewBox=\"0 0 "++ ts ++ " " ++ ts ++ "\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:osb=\"http://www.openswatchbook.org/uri/2009/osb\"><g stroke=\"#000\"><rect width=\"" ++ ts ++ "\" height=\"" ++ ts ++ "\" fill=\"none\"/>" ++ concatMap genKey keys ++ "</g></svg>"
    where ts = show (s * q + 2)
          gc x = (x - 1) * s + 1
          genKey (x, y) =  "<rect x=\"" ++ show (gc x) ++ "\" y=\"" ++ show (gc y)
                     ++ "\" width=\"" ++ show s ++ "\" height=\"" ++ show s ++ "\"/>"
