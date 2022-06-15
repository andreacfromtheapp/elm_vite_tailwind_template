module HelloWorld exposing (helloWorld)

import Accessibility.Aria as Aria
import FontAwesome.Icon as Icon
import FontAwesome.Solid as Icon
import Html exposing (Html, a, button, div, h1, img, table, td, text, tr)
import Html.Attributes as Attr
import Html.Events exposing (onClick)
import Msg exposing (Msg(..))
import VitePluginHelper


elmLogo : String
elmLogo =
    VitePluginHelper.asset "../img/Elm_logo.svg"


helloWorld : Int -> Html Msg
helloWorld model =
    div
        [ Attr.class "hero min-h-screen bg-[url('../img/Elm_logo_blue.svg')]"
        ]
        [ div
            [ Attr.class "hero-overlay bg-opacity-60"
            ]
            []
        , div
            [ Attr.class "hero-content min-h-fit text-center text-neutral-content"
            ]
            [ div
                [ Attr.class "max-w-md"
                ]
                [ img
                    [ Aria.label "Elm Logo"
                    , Attr.src elmLogo
                    , Attr.class "w-80 mx-auto mb-4 bg-neutral-content border-2 border-neutral-content bg-opacity-75 border-opacity-75"
                    ]
                    []
                , h1
                    [ Attr.class "mb-5 text-5xl font-bold"
                    ]
                    [ text "Hello, Vite + Tailwind + Elm!" ]
                , div
                    [ Aria.label "Counter"
                    , Attr.class "text-center mt-4 mb-5"
                    ]
                    [ button
                        [ Aria.label "Decrease Counter"
                        , Attr.class "btn btn-sm btn-outline m-2 text-neutral-content hover:bg-neutral-content hover:text-neutral"
                        , onClick Decrement
                        ]
                        [ text "-" ]
                    , text <| "Count is: " ++ String.fromInt model
                    , button
                        [ Aria.label "Increase Counter"
                        , Attr.class "btn btn-sm btn-outline m-2 text-neutral-content hover:bg-neutral-content hover:text-neutral"
                        , onClick Increment
                        ]
                        [ text "+" ]
                    ]
                , table
                    [ Aria.label "Documentation Links"
                    , Attr.class "table-auto mt-4 text-left mx-auto border-separate border-spacing-2"
                    ]
                    [ tr []
                        [ td [ Attr.class "border border-slate-300 p-2" ]
                            [ Icon.viewIcon Icon.book ]
                        , td [ Attr.class "border border-slate-300 p-2 hover:bg-neutral-content hover:text-neutral" ]
                            [ a [ Attr.class "", Attr.href "https://vitejs.dev/guide/features.html" ] [ text "Vite Documentation" ] ]
                        ]
                    , tr []
                        [ td [ Attr.class "border border-slate-300 p-2" ]
                            [ Icon.viewIcon Icon.book ]
                        , td [ Attr.class "border border-slate-300 p-2 hover:bg-neutral-content hover:text-neutral" ]
                            [ a [ Attr.class "", Attr.href "https://guide.elm-lang.org/" ] [ text "Elm Documentation" ] ]
                        ]
                    , tr []
                        [ td [ Attr.class "border border-slate-300 p-2" ]
                            [ Icon.viewIcon Icon.book ]
                        , td [ Attr.class "border border-slate-300 p-2 hover:bg-neutral-content hover:text-neutral" ]
                            [ a [ Attr.class "", Attr.href "https://tailwindcss.com/docs/installation" ] [ text "Tailwind Documentation" ] ]
                        ]
                    , tr []
                        [ td [ Attr.class "border border-slate-300 p-2" ]
                            [ Icon.viewIcon Icon.book ]
                        , td [ Attr.class "border border-slate-300 p-2 hover:bg-neutral-content hover:text-neutral" ]
                            [ a [ Attr.class "", Attr.href "https://daisyui.com/docs/use/" ] [ text "DaisyUI Documentation" ] ]
                        ]
                    ]
                ]
            ]
        ]
