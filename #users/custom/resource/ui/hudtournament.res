"Resource/UI/HudTournament.res"
{
    "HudTournament"
    {
        "if_mvm"
        {
            "ypos"                                                  "55"
        }

        "playerpanels_kv"
        {
            "ReadyBG"
            {
                "draw_corner_width"                                 "0"
                "draw_corner_height"                                "0"

                "if_competitive"
                {
                    "draw_corner_width"                             "0"
                    "draw_corner_height"                            "0"
                }

                "if_readymode"
                {
                    "draw_corner_width"                             "0"
                    "draw_corner_height"                            "0"
                }

                "if_mvm"
                {
                    "draw_corner_width"                             "0"
                    "draw_corner_height"                            "0"
                }
            }
        }
    }

    "TournamentInstructionsLabel"
    {
        "if_mvm"
        {
            "ypos"                                                  "33"
        }
    }
}