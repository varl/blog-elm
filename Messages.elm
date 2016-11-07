module Messages exposing (..)

import Plan.Messages
import Post.Messages

type Msg =
    NoOp
    | PlanMsgs Plan.Messages.Msg
    | PostMsgs Post.Messages.Msg
