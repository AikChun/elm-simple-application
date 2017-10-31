module Main exposing (..)

import Html exposing (text)

import List


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


type alias Person = 
    { name : String
    , age : Int
    }

foo = ["one", "two", "three"]

people = 
    [ { name = "Legolas", age = 2931 }
    , { name = "Gimli", age = 193 }
    ]

names: List Person -> List String

names peeps =
    List.map (\peep -> peep.name) peeps

findPerson : String -> List Person -> Maybe Person

findPerson name peeps =
    List.foldl
        (\peep memo -> case memo of
            Just _  -> memo
            Nothing -> if ( peep.name == name ) then
                Just peep
                else Nothing
        ) Nothing peeps
        

main = 
    text 
    <| toString
    <| findPerson "Legolas" people
