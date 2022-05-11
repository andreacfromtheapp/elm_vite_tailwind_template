module HelloWorld exposing (helloWorld)

import Html exposing (Html, a, button, div, h1, p, text)
import Html.Attributes exposing (class, href)
import Html.Events exposing (onClick)
import Msg exposing (Msg(..))


helloWorld : Int -> Html Msg
helloWorld model =
    div [ class "py-2" ]
        [ h1 [ class "text-lg font-medium text-center" ] [ text "Hello, Vite + Tailwind + Elm!" ]
        , p []
            [ a [ href "https://vitejs.dev/guide/features.html" ] [ text "Vite Documentation" ]
            , text " | "
            , a [ href "https://guide.elm-lang.org/" ] [ text "Elm Documentation" ]
            ]
        , div [ class "text-center" ]
            [ button [ class "p-2", onClick Decrement ] [ text "-" ]
            , text <| "Count is: " ++ String.fromInt model
            , button [ class "p-2", onClick Increment ] [ text "+" ]
            ]
        ]
