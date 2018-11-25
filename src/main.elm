module Main exposing (..)

-- The primitive car is defined only for non-empty lists.
car : List Int -> Maybe Int
car list =
    case list of
        (x::xs) -> Just x
        _ ->
            Nothing

-- The primitive cdr is defined only for non-empty lists. The cdr of any non- empty list is always another list.
cdr : List Int -> Maybe (List Int)
cdr list =
    case list of
        x::xs -> Just xs
        _ ->
            Nothing

-- The primitive cons takes two arguments. The second argument to cons must be a list. The result is a list.
-- cons is implemented as `::` in the List module
cons a list =
    a :: list

-- The primitive null? is de- fined only for lists.
-- I don't believe checking for null is possible in Elm. Wrap functions in the `Maybe` type.

-- The primitive eq? takes two ar- guments. Each must be a non- numeric atom.
eq a b =
  a == b
