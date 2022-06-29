-- 1) 
pertenceLst [] _ = False ; pertenceLst (h:t) n | h == n = True | otherwise = pertenceLst t n


-- 2)
ocorrencias [] _ = 0 ; ocorrencias (h:t) n | h == n = 1 + (ocorrencias t n) | otherwise = ocorrencias t n

-- 3)

somatorio lista = foldr (+) 0 lista

-- 4)
