"#base"                                                             "hudinspectpanel.res"

"Resource/UI/SpectatorTournament.res"
{
    "specgui"
    {
        "team1_player_delta_y"                                      "-17"
        "team2_player_delta_y"                                      "17"
        "team1_player_base_y"                                       "275"
        "team2_player_base_y"                                       "310"

        "playerpanels_kv"
        {
            "respawntime"
            {
                "fgcolor"                                           "bh_magenta"
            }

            "chargeamount"
            {
                "fgcolor"                                           "bh_byellow"
            }

            "chargeamountBG"
            {
                "xpos"                                              "0"
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
        "bgcolor_override"                                          "bh_BG125"

        "if_mvm"
        {
            "ypos"                                                  "3"
        }
    }
}