module View exposing (..)

import Models exposing (Model)

view : Model -> Html Msg
view model =
    div []
    [ postList
    , planList
    ]

postList : Html Msg
postList =
    div []
    [ Html.App.map PostMsg <| Post.List.view model.posts ]

planList : Html Msg
planList =
    div []
    [ Html.App.map PlanMsg <| Plan.List.view model.plans ]
