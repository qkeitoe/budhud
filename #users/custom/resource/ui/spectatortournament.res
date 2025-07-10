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

    "bh_BuyBackLabelPin"
    {
        "ControlName"                                               "Label"
        "fieldName"                                                 "bh_BuyBackLabelPin"
        "xpos"                                                      "cs-0.5"
        "ypos"                                                      "0"
        "zpos"                                                      "0"
        "wide"                                                      "100"
        "tall"                                                      "0"
        "visible"                                                   "1"
        "enabled"                                                   "1"
        "bgcolor_override"                                          "0 0 0 0"
    }

    "BuyBackLabel"
    {
        "pin_to_sibling"                                            "bh_BuyBackLabelPin"
        "pin_corner_to_sibling"                                     "PIN_CENTER_TOP"
        "pin_to_sibling_corner"                                     "PIN_CENTER_TOP"
        "xpos"                                                      "0"
        "ypos"                                                      "0"
        "auto_wide_tocontents"                                      "1"
        "tall"                                                      "11"
        "font"                                                      "bh_Font11"
        "bgcolor_override"                                          "bh_BGAverage"
    }
}