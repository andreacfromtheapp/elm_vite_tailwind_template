module Main exposing (main)

import Accessibility.Aria as Aria
import Browser
import FontAwesome.Styles as Icon
import HelloWorld exposing (helloWorld)
import Html exposing (Html, div, img)
import Html.Attributes exposing (class, src)
import Msg exposing (Msg(..))
import VitePluginHelper


elmLogo : String
elmLogo =
    VitePluginHelper.asset "../img/Elm_logo.svg"


main : Program () Int Msg
main =
    Browser.sandbox { init = 0, update = update, view = view }


update : Msg -> number -> number
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1


view : Int -> Html Msg
view model =
    div
        [ Aria.label "main content"
        , class "flex flex-col justify-center items-center h-screen font-sans"
        ]
        [ Icon.css
        , img [ src elmLogo, class "w-80" ] []
        , helloWorld model
        ]
