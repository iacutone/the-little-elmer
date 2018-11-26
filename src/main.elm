module Main exposing (..)

car : List Int -> Maybe Int
car list =
    case list of
        (x::xs) -> Just x
        _ ->
            Nothing

cdr : List Int -> Maybe (List Int)
cdr list =
    case list of
        x::xs -> Just xs
        _ ->
            Nothing

cons : a -> List a -> List a
cons a list =
    a :: list

eq : a -> a -> Bool
eq a b =
  a == b

lat : List a -> Bool
lat list =
    case list of
        [] -> True
        (x::xs) -> lat xs

