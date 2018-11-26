module Chapter2 exposing (..)

import Expect exposing (Expectation)
import Test exposing (..)
import Main exposing (..)


suite : Test
suite =
    describe "Chapter 2" 
        [ describe "lat"
            {-
            Always ask null? as the first question in expressing any function.

            (define lat?
                (lambda (l)
                  (cond
                    ((null? l) #t)
                    (else
                      (and (atom? (car l))
                           (lat? (cdr l)))))))
            -}
            [ test "empty list returns true" <|
                \_ ->
                    []
                    |> lat
                    |> Expect.equal True
            , test "a one-dimensional list returns true" <|
                \_ ->
                    [1, 2, 3]
                    |> lat
                    |> Expect.equal True
            -- testing a multi-dimensional list is not possible due to the type signature of `lat` 
            ]
        , describe "member"
            {-
            (define member?
                (lambda (a lat)
                  (cond
                    ((null? lat) #f)
                    ((eq? (car lat) a) #t)
                    (else
                      (member? a (cdr lat))))))

            The `member` function is implemented in the List mdoule
            -}
            [ test "return false when the item is not in the list" <|
                \_ ->
                    ["fried", "eggs", "and", "scrambled", "eggs"]
                    |> List.member "poached"
                    |> Expect.equal False

            , test "return true when the member is in the list" <|
                \_ ->
                    ["mashed", "potatoes", "and", "meat", "gravy]"]
                    |> List.member "meat"
                    |> Expect.equal True
            ]
        ]
