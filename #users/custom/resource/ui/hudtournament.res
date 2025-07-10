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
            "HealthIcon"
            {
                "xpos"                                              "26"
                "ypos"                                              "6"
                "wide"                                              "20"
                "tall"                                              "12"
            }

            "ReadyBG"
            {
                "xpos"                                              "28"
                "ypos"                                              "4"
                "wide"                                              "16"
                "tall"                                              "16"
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

            "ReadyImage"
            {
                "xpos"                                              "29"
                "ypos"                                              "5"
                "wide"                                              "14"
                "tall"                                              "14"
            }

            "playername"
            {
                "ypos"                                              "23"
                "tall"                                              "10"
            }

            "classimage"
            {
                "wide"                                              "20"
                "tall"                                              "20"
            }

            "respawntime"
            {
                "xpos"                                              "26"
                "ypos"                                              "6"
                "wide"                                              "20"
                "tall"                                              "12"
                "fgcolor"                                           "bh_magenta"
            }

            "chargeamount"
            {
                "font"                                              "bh_Font10"
                "xpos"                                              "0"
                "ypos"                                              "10w"
                "wide"                                              "24"
                "tall"                                              "12"
                "fgcolor"                                           "bh_byellow"
            }
        }
    }

    "TournamentInstructionsLabel"
    {
        "ypos"                                                      "41"

        "if_mvm"
        {
            "ypos"                                                  "33"
        }
    }

    "TournamentLabel"
    {
        "ypos"                                                      "-14"
    }
}