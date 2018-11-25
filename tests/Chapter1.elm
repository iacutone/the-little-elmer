module Chapter1 exposing (..)

import Expect exposing (Expectation)
import Test exposing (..)
import Main exposing (..)


suite : Test
suite =
    describe "Chapter 1" 
        [ describe "car"
            [ test "returns the head of a list" <|
                \_ ->
                    let
                        head = car [1, 2, 3]
                    in
                        Expect.equal head (Just 1)
            ]
        , describe "cdr"
            [ test "returns the tail of a list" <|
                  \_ ->
                      let
                          tail = cdr [1, 2, 3]
                      in
                          Expect.equal tail (Just [2, 3])
            ]
        , describe "cons"
            [ test "when appending to a list" <|
                \_ ->
                    let
                        appended =  Main.cons 1 [2,3]
                    in
                        Expect.equal appended [1,2,3]
            ]
        , describe "eq"
            [ test "when the atoms are equal" <|
                \_ ->
                    let
                        items = eq 1 1
                    in
                        Expect.equal True items
            ]
        ]

