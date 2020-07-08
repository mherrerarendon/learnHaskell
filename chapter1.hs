-- 1. Give another possible calculation for the result of double (double 2)
-- 2. Show that sum [x] = x for any number x.
-- 3. Define a function product that produces the product of a list of numbers, and show using your definition that product [2,3,4] = 24.
mult []     = 1
mult (n:ns) = n * mult ns
-- 4. How should the definition of the function qsort be modified so that it produces a reverse sorted version of a list?
qsort []     = []
qsort (x:xs)    = qsort larger ++ [x] ++ qsort smaller
                  where 
                      larger = [a | a <- xs, a >= x]
                      smaller = [b | b <- xs, b < x]
-- 5. What would be the effect of replacing <= by < in the original definition of qsort? Hint: consider the example qsort [2,2,3,1,1].
-- The number of elements in larger and smaller would be distributed differently, but the average efficiency would stay the same
-- It would also preserve the order for elements of equal value.