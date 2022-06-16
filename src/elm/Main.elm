port module Main exposing
    ( Model
    , Msg(..)
    , docs
    , githubLink
    , helloWorld
    , initialModel
    , main
    )

import Accessibility.Aria as Aria
import Browser
import FontAwesome.Brands as Icon
import FontAwesome.Icon as Icon
import FontAwesome.Solid as Icon
import FontAwesome.Styles as Icon
import Html
    exposing
        ( Html
        , a
        , button
        , div
        , h1
        , img
        , main_
        , table
        , td
        , text
        , tr
        )
import Html.Attributes as Attr
import Html.Events exposing (onClick)
import VitePluginHelper



-- CONSTANTS


elmLogo : String
elmLogo =
    VitePluginHelper.asset "../img/Elm_logo.svg"



-- MESSAGES


type Msg
    = Increment
    | Decrement
    | ChangeTheme String



-- MODEL


type alias Model =
    { theme : String
    , count : Int
    }



-- INIT


initialModel : ( Model, Cmd Msg )
initialModel =
    ( { theme = "light"
      , count = 0
      }
    , doNothingCmd
    )



-- MAIN


main : Program () Model Msg
main =
    Browser.element
        { init = \_ -> initialModel
        , view = view
        , update = update
        , subscriptions = subscriptions
        }



-- VIEW


view : Model -> Html Msg
view model =
    main_
        [ Aria.label "main content"
        , Attr.class "flex flex-col justify-center items-center w-full h-full font-sans text-center text-neutral-content bg-info bg-opacity-50"
        ]
        [ Icon.css
        , helloWorld model
        ]


helloWorld : Model -> Html Msg
helloWorld model =
    div
        [ Attr.class "hero min-h-screen bg-[url('../img/Elm_logo_blue.svg')]"
        ]
        [ div
            [ Attr.class "hero-overlay"
            ]
            []
        , div
            [ Attr.class "hero-content min-h-fit "
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
                    [ Attr.class "mb-2 text-5xl font-bold"
                    ]
                    [ text "Hello, Vite + Tailwind + Elm!" ]
                , themes
                , docs
                , counter model
                , githubLink
                ]
            ]
        ]


themes : Html Msg
themes =
    div
        [ Aria.label "Theme Selector"
        , Attr.class "mt-4"
        ]
        [ button
            [ Attr.class "btn btn-ghost btn-circle text-3xl"
            , Aria.label "light theme"
            , onClick (ChangeTheme "light")
            ]
            [ Icon.viewIcon Icon.sun
            ]
        , button
            [ Attr.class "btn btn-ghost btn-circle text-3xl"
            , Aria.label "dark theme"
            , onClick (ChangeTheme "dark")
            ]
            [ Icon.viewIcon Icon.moon
            ]
        ]


docs : Html Msg
docs =
    let
        borders : String
        borders =
            "border border-slate-300 p-1"

        hovering : String
        hovering =
            "hover:bg-neutral-content hover:text-neutral"
    in
    table
        [ Aria.label "Documentation Links"
        , Attr.class "table-auto mt-4 mx-auto border-separate border-spacing-2"
        ]
        [ tr []
            [ td [ Attr.class borders ]
                [ Icon.viewIcon Icon.book ]
            , td [ Attr.class <| borders ++ " " ++ hovering ]
                [ a
                    [ Attr.href "https://guide.elm-lang.org/"
                    , Attr.target "_blank"
                    , Attr.rel "noreferrer noopener"
                    ]
                    [ text "Elm Documentation" ]
                ]
            , td [ Attr.class <| borders ++ " " ++ hovering ]
                [ a
                    [ Attr.href "https://tailwindcss.com/docs/installation"
                    , Attr.target "_blank"
                    , Attr.rel "noreferrer noopener"
                    ]
                    [ text "Tailwind Documentation" ]
                ]
            ]
        , tr []
            [ td [ Attr.class borders ]
                [ Icon.viewIcon Icon.book ]
            , td [ Attr.class <| borders ++ " " ++ hovering ]
                [ a
                    [ Attr.href "https://vitejs.dev/guide/features.html"
                    , Attr.target "_blank"
                    , Attr.rel "noreferrer noopener"
                    ]
                    [ text "Vite Documentation" ]
                ]
            , td [ Attr.class <| borders ++ " " ++ hovering ]
                [ a
                    [ Attr.href "https://daisyui.com/docs/use/"
                    , Attr.target "_blank"
                    , Attr.rel "noreferrer noopener"
                    ]
                    [ text "DaisyUI Documentation" ]
                ]
            ]
        ]


githubLink : Html Msg
githubLink =
    div [ Attr.class "text-2xl" ]
        [ a
            [ Attr.href "https://github.com/gacallea/elm_vite_tailwind_template"
            , Attr.target "_blank"
            , Attr.rel "noreferrer noopener"
            ]
            [ Icon.viewIcon Icon.github ]
        ]


counter : Model -> Html Msg
counter model =
    div
        [ Aria.label "Counter"
        , Attr.class "text-center mt-4 mb-5"
        ]
        [ button
            [ Aria.label "Decrease Counter"
            , Attr.class "btn btn-sm btn-outline m-2 text-neutral-content hover:bg-neutral-content hover:text-neutral"
            , onClick Decrement
            ]
            [ text "-" ]
        , text <| "Count is: " ++ String.fromInt model.count
        , button
            [ Aria.label "Increase Counter"
            , Attr.class "btn btn-sm btn-outline m-2 text-neutral-content hover:bg-neutral-content hover:text-neutral"
            , onClick Increment
            ]
            [ text "+" ]
        ]



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ChangeTheme string ->
            ( model
            , changeTheme string
            )

        Increment ->
            ( { model | count = model.count + 1 }
            , Cmd.none
            )

        Decrement ->
            ( { model | count = model.count - 1 }
            , Cmd.none
            )



-- COMMANDS


doNothingCmd : Cmd Msg
doNothingCmd =
    Cmd.none



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none



-- PORTS


port changeTheme : String -> Cmd msg
