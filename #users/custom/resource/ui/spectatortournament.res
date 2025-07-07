"#base"                                                             "hudinspectpanel.res"

"Resource/UI/SpectatorTournament.res"
{
    "specgui"
    {
        "team1_player_delta_y"                                      "13"
        "team2_player_delta_y"                                      "-13"
        "team1_player_base_y"                                       "346"
        "team2_player_base_y"                                       "319"

        "playerpanels_kv"
        {
            "wide"                                                  "125"
            "tall"                                                  "12"

            "playername"
            {
                "font"                                              "bh_Font8"
                "xpos"                                              "34"
                "wide"                                              "66"
                "tall"                                              "12"
            }

            "classimage"
            {
                "wide"                                              "12"
                "tall"                                              "12"
            }

            "classimagebg"
            {
                "wide"                                              "12"
                "tall"                                              "12"
            }

            "HealthIcon"
            {
                "xpos"                                              "12"
                "wide"                                              "20"
                "tall"                                              "12"
            }

            "bh_VerticalLine"
            {
                "ypos"                                              "r-6969"
                "wide"                                              "0"
                "tall"                                              "0"
                "visible"                                           "0"
                "enabled"                                           "0"
            }

            "ReadyBG"
            {
                "wide"                                              "12"
                "tall"                                              "12"
            }

            "respawntime"
            {
                "font"                                              "bh_Font10"
                "xpos"                                              "12"
                "ypos"                                              "0"
                "wide"                                              "20"
                "tall"                                              "12"
                "fgcolor"                                           "bh_magenta"
            }

            "chargeamount"
            {
                "font"                                              "bh_Font10"
                "xpos"                                              "100"
                "ypos"                                              "0"
                "wide"                                              "23"
                "tall"                                              "12"
                "fgcolor"                                           "bh_byellow"
            }

            "chargeamountBG"
            {
                "font"                                              "bh_Font10"
                "xpos"                                              "0"
                "wide"                                              "23"
                "tall"                                              "12"
            }
        }
    }

    "ReinforcementsLabel"
    {
        "xpos"                                                      "5"
        "ypos"                                                      "3"
        "auto_wide_tocontents"                                      "1"
        "tall"                                                      "16"
        "textAlignment"                                             "center"
        "font"                                                      "bh_Font16"
        "bgcolor_override"                                          "bh_BGAverage"

        "if_mvm"
        {
            "ypos"                                                  "3"
        }
    }
}