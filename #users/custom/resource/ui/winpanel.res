"Resource/UI/winpanel.res"
{
    "TeamScoresPanel"
    {
        "ypos"                                                      "57"
        "wide"                                                      "224"

        "bh_BlueScoreBG"
        {
            "ypos"                                                  "r-6969"
            "wide"                                                  "0"
            "tall"                                                  "0"
            "visible"                                               "0"
            "enabled"                                               "0"
        }

        "bh_RedScoreBG"
        {
            "ypos"                                                  "r-6969"
            "wide"                                                  "0"
            "tall"                                                  "0"
            "visible"                                               "0"
            "enabled"                                               "0"
        }

        "BlueTeamLabel"
        {
            "fgcolor"                                               "bh_blue"
        }

        "BlueTeamLabelDropshadow"
        {
            "pin_to_sibling"                                        "BlueTeamLabel"
            "ControlName"                                           "CExLabel"
            "fieldName"                                             "BlueTeamLabelDropshadow"
            "xpos"                                                  "1"
            "ypos"                                                  "-1"
            "zpos"                                                  "0"
            "wide"                                                  "75"
            "tall"                                                  "28"
            "visible"                                               "1"
            "enabled"                                               "1"
            "labelText"                                             "%blueteamname%"
            "textAlignment"                                         "west"
            "font"                                                  "bh_Font24"
            "fgcolor"                                               "bh_Shadow"
        }

        "RedTeamLabel"
        {
            "fgcolor"                                               "bh_red"
        }

        "RedTeamLabelDropshadow"
        {
            "pin_to_sibling"                                        "RedTeamLabel"
            "ControlName"                                           "CExLabel"
            "fieldName"                                             "RedTeamLabelDropshadow"
            "xpos"                                                  "-1"
            "ypos"                                                  "-1"
            "zpos"                                                  "0"
            "wide"                                                  "75"
            "tall"                                                  "28"
            "visible"                                               "1"
            "enabled"                                               "1"
            "labelText"                                             "%redteamname%"
            "textAlignment"                                         "east"
            "font"                                                  "bh_Font24"
            "fgcolor"                                               "bh_Shadow"
        }

        "BlueTeamScore"
        {
            "xpos"                                                  "cs-1.0-3"
            "proportionaltoparent"                                  "1"
        }

        "RedTeamScore"
        {
            "xpos"                                                  "c3"
            "proportionaltoparent"                                  "1"
        }
    }

    "bh_MVPPanelPin"
    {
        "ypos"                                                      "372"
    }

    "bh_Background"
    {
        "xpos"                                                      "-10"
        "ypos"                                                      "-1"
        "wide"                                                      "205"
        "tall"                                                      "105"
    }

    "KillStreakPlayer1Badge"
    {
        "ypos"                                                      "r-6969"
        "wide"                                                      "0"
        "tall"                                                      "0"
        "visible"                                                   "0"
        "enabled"                                                   "0"
    }
}