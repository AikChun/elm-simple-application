module Main exposing (..)

import Html exposing (text)


ask : String -> String -> String

ask thing place =
    "is there a " ++ thing ++ " in the " ++ place ++ "?"

politely : String -> String

politely phrase =
    "Excuse me, " ++ phrase

askPolitelyAboutFish : String -> String
askPolitelyAboutFish = politely << (ask "fish")

type alias Dog =
    { name : String
    , age : Int
    }

dog = 
    { name = "Spock"
    , age = 23
    }

renderDog : Dog -> String

renderDog dog =
    dog.name ++ ", " ++ toString dog.age


main = 
    text 
    <| renderDog dog
