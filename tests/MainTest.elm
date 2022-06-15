module MainTest exposing (suite)

import Main exposing (Msg(..), helloWorld, initialModel)
import Test exposing (Test)
import Test.Html.Event as Event
import Test.Html.Query as Query
import Test.Html.Selector as Html


suite : Test
suite =
    Test.describe "HelloWorld"
        [ Test.test "renders and runs helloWorld" <|
            \_ ->
                initialModel
                    |> Tuple.first
                    |> helloWorld
                    |> Query.fromHtml
                    |> Query.has [ Html.text "Hello, Vite + Tailwind + Elm!" ]
        , Test.test "Displays the current count" <|
            \_ ->
                initialModel
                    |> Tuple.first
                    |> helloWorld
                    |> Query.fromHtml
                    |> Query.has [ Html.text "Count is: 0" ]
        , Test.test "clicking on the + button sends an increment message" <|
            \_ ->
                initialModel
                    |> Tuple.first
                    |> helloWorld
                    |> Query.fromHtml
                    |> Query.find [ Html.tag "button", Html.containing [ Html.text "+" ] ]
                    |> Event.simulate Event.click
                    |> Event.expect Increment
        , Test.test "clicking on the - button sends a decrement message" <|
            \_ ->
                initialModel
                    |> Tuple.first
                    |> helloWorld
                    |> Query.fromHtml
                    |> Query.find [ Html.tag "button", Html.containing [ Html.text "-" ] ]
                    |> Event.simulate Event.click
                    |> Event.expect Decrement
        ]
