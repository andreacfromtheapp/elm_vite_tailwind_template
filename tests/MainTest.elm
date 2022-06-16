module MainTest exposing (suite)

import Html.Attributes as Attr
import Main exposing (Msg(..), helloWorld, initialModel)
import Test exposing (Test)
import Test.Html.Event as Event
import Test.Html.Query as Query
import Test.Html.Selector as Html


queryHtmlInitModel : Query.Single Msg
queryHtmlInitModel =
    initialModel
        |> Tuple.first
        |> helloWorld
        |> Query.fromHtml


suite : Test
suite =
    Test.describe "HelloWorld"
        [ Test.test "renders and runs helloWorld" <|
            \_ ->
                queryHtmlInitModel
                    |> Query.has [ Html.text "Hello, Vite + Tailwind + Elm!" ]
        , Test.test "Displays the current count" <|
            \_ ->
                queryHtmlInitModel
                    |> Query.has [ Html.text "Count is: 0" ]
        , Test.test "clicking on the + button sends an increment message" <|
            \_ ->
                queryHtmlInitModel
                    |> Query.find [ Html.tag "button", Html.containing [ Html.text "+" ] ]
                    |> Event.simulate Event.click
                    |> Event.expect Increment
        , Test.test "clicking on the - button sends a decrement message" <|
            \_ ->
                queryHtmlInitModel
                    |> Query.find [ Html.tag "button", Html.containing [ Html.text "-" ] ]
                    |> Event.simulate Event.click
                    |> Event.expect Decrement
        , Test.test "Elm documentation link present" <|
            \_ ->
                queryHtmlInitModel
                    |> Query.has [ Html.tag "a", Html.attribute (Attr.href "https://guide.elm-lang.org/") ]
        , Test.test "Vite documentation link present" <|
            \_ ->
                queryHtmlInitModel
                    |> Query.has [ Html.tag "a", Html.attribute (Attr.href "https://vitejs.dev/guide/features.html") ]
        , Test.test "Tailwind CSS documentation link present" <|
            \_ ->
                queryHtmlInitModel
                    |> Query.has [ Html.tag "a", Html.attribute (Attr.href "https://tailwindcss.com/docs/installation") ]
        , Test.test "Daisy UI documentation link present" <|
            \_ ->
                queryHtmlInitModel
                    |> Query.has [ Html.tag "a", Html.attribute (Attr.href "https://daisyui.com/docs/use/") ]
        , Test.test "Project GitHub link present" <|
            \_ ->
                queryHtmlInitModel
                    |> Query.has [ Html.tag "a", Html.attribute (Attr.href "https://github.com/gacallea/elm_vite_tailwind_template") ]
        ]
