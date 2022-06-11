module HelloWorld exposing (helloWorld)

import Accessibility.Aria as Aria
import FontAwesome.Icon as Icon
import FontAwesome.Solid as Icon
import Html exposing (Html, a, button, div, h1, img, table, td, text, tr)
import Html.Attributes exposing (class, href, src)
import Html.Events exposing (onClick)
import Msg exposing (Msg(..))
import VitePluginHelper


elmLogo : String
elmLogo =
    VitePluginHelper.asset "../img/Elm_logo.svg"


helloWorld : Int -> Html Msg
helloWorld model =
    div [ class "text-xl" ]
        [ img [ Aria.label "Elm Logo", src elmLogo, class "w-80 mx-auto" ] []
        , h1 [ Aria.label "Title", class "text-center text-4xl my-4" ] [ text "Hello, Vite + Tailwind + Elm!" ]
        , div [ Aria.label "Counter", class "text-center mt-4" ]
            [ button [ Aria.label "Decrease Counter", class "m-2 px-2 bg-slate-300 hover:bg-slate-400 border border-black", onClick Decrement ] [ text "-" ]
            , text <| "Count is: " ++ String.fromInt model
            , button [ Aria.label "Increase Counter", class "m-2 px-2 bg-slate-300 hover:bg-slate-400 border border-black", onClick Increment ] [ text "+" ]
            ]
        , table [ Aria.label "Documentation Links", class "table-auto mt-4 text-left mx-auto border-separate border-spacing-2" ]
            [ tr []
                [ td [ class "border border-slate-300 p-2" ]
                    [ Icon.viewIcon Icon.book ]
                , td [ class "border border-slate-300 p-2" ]
                    [ a [ class "hover:text-blue-500", href "https://vitejs.dev/guide/features.html" ] [ text "Vite Documentation" ] ]
                ]
            , tr []
                [ td [ class "border border-slate-300 p-2" ]
                    [ Icon.viewIcon Icon.book ]
                , td [ class "border border-slate-300 p-2" ]
                    [ a [ class "hover:text-blue-500", href "https://guide.elm-lang.org/" ] [ text "Elm Documentation" ] ]
                ]
            , tr []
                [ td [ class "border border-slate-300 p-2" ]
                    [ Icon.viewIcon Icon.book ]
                , td [ class "border border-slate-300 p-2" ]
                    [ a [ class "hover:text-blue-500", href "https://tailwindcss.com/docs/installation" ] [ text "Tailwind Documentation" ] ]
                ]
            ]
        ]
