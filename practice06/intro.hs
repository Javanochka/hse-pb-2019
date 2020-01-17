
add :: Int -> Int -> Int
add x y = x + y         -- определение add

add' x = \ y -> x + y

add'' = \ x y -> x + y

foo x y = let z = x + y -- глобальное (foo) локальное (z)
              s = z * z
          in print s    -- отступ (layout rule)

printThree = print (add 1 2)
printThree' = print $ add 1 2

-- Lazy!
k = \ x y -> x
lazyWow = print $ k 42 undefined

factorial 0 = 1
factorial n = n * factorial (n - 1)

factorial' n | n == 0    = 1
             | n == 1    = 1
             | otherwise = n * factorial' (n - 1)

factorial'' n = if    n == 0
                then  1
                else  n * factorial'' (n - 1)

factorial''' n = case n of
                 0 -> 1
                 m -> m * factorial''' (m - 1)

-- Do you recognize it?
evens xs = [x | x <- xs, x `mod` 2 == 0]

add'm a Nothing = a
add'm Nothing b = b
add'm (Just a) (Just b) = Just $ a + b

head' (s:xs) = s
