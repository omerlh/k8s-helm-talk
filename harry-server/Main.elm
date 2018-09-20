import Html exposing (..)
import Html.Attributes exposing (..)

main =
  div []
    [ 
        p [] [text "Powered by Elm"]
        , img [src "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Elm_logo.svg/1024px-Elm_logo.svg.png",
        height 40] []
        ,h1 [
          style [
            ("color", "#00aeef")
            , ("font-family", "Calibri, Candara, Segoe, Optima, Arial, sans-serif")
            , ("text-align", "center"), 
            ("font-size", "48")]] 
          [text "Welcome to Harry Server :)"]
        , img [src "https://img.buzzfeed.com/buzzfeed-static/static/2015-11/19/17/enhanced/webdr02/original-grid-image-23059-1447970713-6.jpg?downsize=715:*&output-format=auto&output-quality=auto"
        , height 400
            , style [ ("display", "block"), ("margin-left", "auto"), ("margin-right", "auto")]] []
        , p  [] [text "Source: buzzfeed.com"]
    ]

