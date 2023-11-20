module Main exposing (Model, Msg(..), init, main, update, view)

import Browser
import Html exposing (Html, button, div, li, text, ul)
import Html.Attributes exposing (class, id, style)
import Html.Events exposing (onClick)



-- MAIN


main =
    Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Model =
    Int


init : Model
init =
    0



-- UPDATE


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1



-- VIEW


view : Model -> Html Msg
view model =
    div
        [ style "text-align" "center"
        , style "font-size" "64px"
        , style "margin" "32px auto"
        ]
        [ button
            [ onClick Decrement
            , style "display" "inline-block"
            , style "width" "24px"
            , style "height" "24px"
            ]
            [ text "-" ]
        , div [] [ text (String.fromInt model) ]
        , button
            [ onClick Increment
            , style "display" "inline-block"
            , style "width" "24px"
            , style "height" "24px"
            ]
            [ text "+" ]
        ]
