module HelloWorld exposing (helloWorld)

import FontAwesome.Icon as Icon
import FontAwesome.Solid as Icon
import Html exposing (Html, a, button, div, h1, p, text)
import Html.Attributes exposing (class, href)
import Html.Events exposing (onClick)
import Msg exposing (Msg(..))


helloWorld : Int -> Html Msg
helloWorld model =
    div [ class "py-2 text-center" ]
        [ h1 [ class "text-lg font-medium" ] [ text "Hello, Vite + Tailwind + Elm!" ]
        , p [ class "p-2 flex flex-col" ]
            [ a [ href "https://vitejs.dev/guide/features.html" ] [ Icon.viewIcon Icon.book, text " Vite Documentation" ]
            , a [ href "https://guide.elm-lang.org/" ] [ Icon.viewIcon Icon.book, text " Elm Documentation" ]
            , a [ href "https://tailwindcss.com/docs/installation" ] [ Icon.viewIcon Icon.book, text " Tailwind Documentation" ]
            ]
        , div [ class "text-center" ]
            [ button [ class "m-2 px-2 bg-slate-300 hover:bg-slate-400 border border-black", onClick Decrement ] [ text "-" ]
            , text <| "Count is: " ++ String.fromInt model
            , button [ class "m-2 px-2 bg-slate-300 hover:bg-slate-400 border border-black", onClick Increment ] [ text "+" ]
            ]
        ]
