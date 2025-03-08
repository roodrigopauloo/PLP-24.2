-- Escreva um programa que recebe pares de inteiros e compara a diferença absoluta entre eles. O programa deve continuar até receber um par de inteiros cuja diferença absoluta seja menor do que a diferença absoluta do par anterior.

import Control.Monad (when)

difAbs :: (Int, Int) -> Int
difAbs (a,b) = abs(a-b)

loop :: Maybe Int -> IO()
loop Nothing = do
    x <- readLn
    y <- readLn
    let current = difAbs(x,y)
    loop (Just current)


loop (Just previous) = do
    x <- readLn
    y <- readLn 
    
    let current = difAbs(x,y)

    if current < previous
        then putStrLn "cabou"
        else loop (Just current)

main :: IO()
main = loop Nothing

