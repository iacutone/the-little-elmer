module Chapter1 exposing (..)

import Expect exposing (Expectation)
import Test exposing (..)
import Main exposing (..)


suite : Test
suite =
    describe "Chapter 1" 
        [ describe "car"
            -- The primitive car is defined only for non-empty lists.
            [ test "returns the head of a list" <|
                \_ ->
                    [1, 2, 3]
                    |> car
                    |> Expect.equal (Just 1)
            ]
        , describe "cdr"
            -- The primitive cdr is defined only for non-empty lists. The cdr of any non- empty list is always another list.
            [ test "returns the tail of a list" <|
                  \_ ->
                      [1, 2, 3]
                      |> cdr
                      |> Expect.equal (Just [2, 3])
            ]
        , describe "cons"
            -- The primitive cons takes two arguments. The second argument to cons must be a list. The result is a list.
            -- cons is implemented as `::` in the List module
            [ test "when appending to a list" <|
                \_ ->
                    [2,3]
                    |> Main.cons 1
                    |> Expect.equal [1,2,3]
            ]
        , describe "null"
            [
                -- The primitive null? is de- fined only for lists.
                -- I don't believe checking for null is possible in Elm. Wrap functions in the `Maybe` type.
                todo ""
            ]
        , describe "eq"
            -- The primitive eq? takes two ar- guments. Each must be a non- numeric atom.
            [ test "when the atoms are equal" <|
                \_ ->
                    1
                    |> eq 1
                    |> Expect.equal True
            ]
        ]

