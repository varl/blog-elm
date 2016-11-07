module Models exposing (..)

import Plan.Models exposing (Plan)
import Post.Models exposing (Post)

type alias Model =
    { plans: List Plan
    , posts : List Post
    }

init : (Model, Cmd Msg)
init =
    let
        model = Model [] None
        cmds = Cmd.batch
            [ Cmd.map PostMsg Post.Commands.fetchAll
            , Cmd.map PlanMsg Plan.Commands.fetchAll
            ]
    in
       (models, cmds)
