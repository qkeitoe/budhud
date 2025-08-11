"Resource/UI/HudMatchStatus.res"
{
    "HudMatchStatus"
    {
    }

    "ObjectiveStatusTimePanel"
    {
        "TimePanelValue"
        {
            "bgcolor_override"                                      "bh_BGStandard"

            "if_match"
            {
                "bgcolor_override"                                  "bh_BGStandard"
            }
        }
    }

    "RoundCounter"
    {
        "Background"
        {
            "fillcolor"                                             "bh_BG125"
        }
    }

    "TeamStatus"
    {
        "max_size"                                                  "37"
        "team1_base_x"                                              "c-45"
        "team1_max_expand"                                          "227"
        "team2_base_x"                                              "c45"
        "team2_max_expand"                                          "227"
        "6v6_gap"                                                   "1"
        "12v12_gap"                                                 "1"

        "playerpanels_kv"
        {
            "color_portrait_bg_red_dead"                            "bh_BG200"
            "color_portrait_bg_blue_dead"                           "bh_BG200"
            "color_bar_health_high"                                 "84 191 58 255"
            "color_bar_health_med"                                  "191 183 58 255"
            "percentage_health_med"                                 "0.6"
            "color_bar_health_low"                                  "191 58 58 255"
            "percentage_health_low"                                 "0.3"
            "color_portrait_bg_red_local_player"                    "bh_BG200"
            "color_portrait_bg_blue_local_player"                   "bh_BG200"

            "classimagebg"
            {
                "tall"                                              "20"
                "zpos"                                              "2"
            }

            "healthbar"
            {
                "ypos"                                              "0"
                "zpos"                                              "3"
                "tall"                                              "20"
                "bgcolor_override"                                  "bh_Theme_BG30"
            }

            "overhealbar"
            {
                "ypos"                                              "0"
                "zpos"                                              "4"
                "tall"                                              "20"
            }

            "classimage"
            {
                "ypos"                                              "0"
                "zpos"                                              "5"
            }

            "playername"
            {
                "fieldName"                                         "playername"
                "xpos"                                              "0"
                "ypos"                                              "20"
                "zpos"                                              "5"
                "wide"                                              "f0"
                "tall"                                              "7"
                "visible"                                           "1"
                "textinsetx"                                        "1"
                "labelText"                                         "%playername%"
                "font"                                              "bh_Font6"
                "textAlignment"                                     "center"
                "bgcolor_override"                                  "bh_BG200"
                "proportionaltoparent"                              "1"
            }

            "SkullPanel"
            {
                "ypos"                                              "r-6969"
                "wide"                                              "0"
                "tall"                                              "0"
                "visible"                                           "0"
                "enabled"                                           "0"
            }

            "respawntime"
            {
                "ypos"                                              "0"
                "zpos"                                              "6"
                "font"                                              "bh_Font18DropShadow"
                "fgcolor_override"                                  "bh_byellow"
                "wide"                                              "f0"
                "tall"                                              "20"
            }
        }
    }
}