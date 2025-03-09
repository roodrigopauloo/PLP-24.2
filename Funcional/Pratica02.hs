-- Marcelo e Vicente, apaixonados por figurinhas, criaram uma brincadeira onde, ao trocar figurinhas com amigos, cada um divide suas figurinhas em pilhas do maior tamanho comum possível. Por exemplo, se um tem 8 figurinhas e outro 12, ambos dividem em pilhas de 4 figurinhas. Em seguida, cada um escolhe uma pilha do amigo para trocar. Desenvolva um programa que, baseado em n entradas, solicita quantas figurinhas cada usuário possuí, e retorna o maior bolo de figurinhas possível para estes fazerem a troca.

import Control.Monad(replicateM)

divInt :: Int -> Int -> Int
divInt a 0 = a
divInt a b = divInt b (a `mod` b)

resolverTroca :: Int -> Int -> IO()
resolverTroca a b = putStrLn $ "Maior bolo de figurinhas possível: " ++ show (divInt a b)

lerPares :: Int -> IO()
lerPares 0 = return ()
lerPares n = do
    a <- readLn
    b <- readLn
    resolverTroca a b
    lerPares (n-1)


main :: IO()
main = do 
    n <- readLn
    lerPares n
