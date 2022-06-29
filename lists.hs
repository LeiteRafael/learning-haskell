----------------- lstvezes-----------------------------

-- Função que multiplica todos elementos de uma lista por um numero
{ 
    lstvezes [] _ = [] ;
    lstvezes (h:t) n = (h * n):(lstvezes t n)
}

lstvezes [2,3,4] 3
----------------- invertelst-----------------------------

-- Função que inverte uma lista
{ 
    invertelst [] = [] ;
    invertelst (h:t) = (invertelst t) ++ [h]
}

invertelst [1,2,4]
----------------- powlist-------------------------------

-- Função power recursiva
let {
    power x 0 = 1 ;
    power x y = x * power x (y-1)
}

-- Função power sobre uma lista (com o operador ^)
{ 
    powlist [] _ = [] ;
    powlist (h:t) n = (h ^ n):(powlist t n)
}

-- Função power sobre uma lista (com a função power)
{ 
    powlist [] _ = [] ;
    powlist (h:t) n = (power h n):(powlist t n)
}

-- powlist [2,3,4] 3 => [8,27,64]