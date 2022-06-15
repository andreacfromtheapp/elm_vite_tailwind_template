module Main exposing (main)

import Accessibility.Aria as Aria
import Browser
import FontAwesome.Styles as Icon
import HelloWorld exposing (helloWorld)
import Html exposing (Html, main_)
import Html.Attributes as Attr
import Msg exposing (Msg(..))


main : Program () Int Msg
main =
    Browser.sandbox { init = 0, update = update, view = view }


view : Int -> Html Msg
view model =
    main_
        [ Aria.label "main content"
        , Attr.class "flex flex-col justify-center items-center h-screen font-sans"
        ]
        [ Icon.css
        , helloWorld model
        ]


update : Msg -> number -> number
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1
