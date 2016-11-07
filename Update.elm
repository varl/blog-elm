module Update exposing (..)

import Models exposing (Model)
import Messages exposing (Msg (NoOp, PlanMsg, PostMsg))

import Plan.Update
import Post.Update

update: Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        NoOp ->
            (model, Cmd.none)
