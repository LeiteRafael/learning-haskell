-- 1) 
pertenceLst [] _ = False ; pertenceLst (h:t) n | h == n = True | otherwise = pertenceLst t n


-- 2)
ocorrencias [] _ = 0 ; ocorrencias (h:t) n | h == n = 1 + (ocorrencias t n) | otherwise = ocorrencias t n

-- 3)

somatorio lista = foldr (+) 0 lista

-- 4)

replica e n | n == 0 = [] | otherwise = [e] ++ (replica e (n-1))

-- 5)

norma lista = sqrt (foldr (+) 0 ((map (\x -> x ^ 2)) lista))

-- 6)

prod_int lista1 lista2 = foldr (+) 0 (zipWith (*) lista1 lista2)

-- 7)

let { norma lista = sqrt (foldr (+) 0 ((map (\x -> x ^ 2)) lista)) }
let { prod_int lista1 lista2 = foldr (+) 0 (zipWith (*) lista1 lista2) }
sim a b = (prod_int a b) / ((norma a) * (norma b))

-- 8)

retornaPot2 tamanho = [2^tamanho | tamanho <- [1..tamanho]]

-- 9)

let { fib 0 = 0 ; fib 1 = 1 ; fib n = fib (n-1) + fib (n-2) }
retornaFib tamanho = [fib tamanho | tamanho <- [1..tamanho]]
