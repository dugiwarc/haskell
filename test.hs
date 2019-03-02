import Data.List
import System.IO

double x = x + x
carre x = x * x
poly x = 2 + 3 * x + 4 ** x + x ** 3 + 2 * x ** 4
triple x = x * x * x
quadruple x = x * x * x * x
joursemaine x = case x of
    1 -> "Lundi"
    2 -> "Mardi"
    3 -> "Mercredi"
    4 -> "Jeudi"
    5 -> "Vendredi"
    6 -> "Samedi"
    7 -> "Dimanche"
    otherwise -> "Invalid"

mois x = case x of 
    1 -> "Janvier"
    2 -> "Fevrier"
    3 -> "Mars"
    4 -> "Avril"
    5 -> "Mai"
    6 -> "Juin"
    7 -> "Julliet"
    8 -> "Aout"
    9 -> "Septembre"
    10 -> "Octombre"
    11 -> "Novembre"
    12 -> "Decembre"
    otherwise -> "Invalid"

date a b c d = "le" ++ " " ++ joursemaine a ++ " "  ++ show c ++ " " ++ mois b ++ " " ++ show d

discriminant:: Float->Float->Float->Float
discriminant a b c = b ** 2 - 4 * a * c

solution:: Float->Float->Float->Float
solution a b c =
        if ( discriminant a b c < 0 )
            then 0
            else discriminant a b c

pow:: Integer->Integer->Integer
pow x n |(n==1) = x
        |(n==0) = 1
        |even n = (pow x (div n 2)) * (pow x (div n 2))
        |odd n = x * (pow x (n - 1))

fac 1 = 1
fac n = n * fac (n-1)

pgcd 0 k = k
pgcd k 0 = 0
pgcd a b = pgcd c (d `mod` c)
    where   d = max a b
            c = min a b

fib = 0 : 1 : [n | x <-[2..],let n = ((fib !! (x-1))+ (fib !! (x-2)))]

isPrime k = null [ x | x <- [2..k - 1], k `mod` x == 0]

divisors n = [x | x <- [1 .. n - 1], n `mod` x == 0, x <= n]


isPerfect::Int->String
isPerfect n | n == sum (divisors n) = "yes"
            | otherwise = "no"

hanoi::Integer->a->a->a->[(a, a)]
hanoi 0 _ _ _ = []
hanoi n a b c = hanoi (n-1) a c b ++ [(a, b)] ++ hanoi (n - 1) c b a

