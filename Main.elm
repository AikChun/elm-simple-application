module Main exposing (..)

import Html exposing (text)


ask : String -> String -> String

ask thing place = "is there a " ++ thing ++ " in the " ++ place ++ "?"

politely : String -> String

politely phrase = "Excuse me, " ++ phrase

askPolitelyAboutFish : String -> String
askPolitelyAboutFish = politely << (ask "fish")
main = text 
        <| askPolitelyAboutFish "house"
