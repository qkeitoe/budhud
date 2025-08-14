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
            "percentage_health_med"                                 "0.6"
            "percentage_health_low"                                 "0.3"

            "classimagebg"
            {
                "tall"                                              "19"
                "zpos"                                              "2"
            }

            "healthbar"
            {
                "ypos"                                              "16"
                "zpos"                                              "4"
                "tall"                                              "4"
                "bgcolor_override"                                  "bh_Theme_BG30"
            }

            "overhealbar"
            {
                "ypos"                                              "16"
                "zpos"                                              "5"
                "tall"                                              "4"
            }

            "classimage"
            {
                "ypos"                                              "-1"
                "zpos"                                              "3"
            }

            "playername"
            {
                "fieldName"                                         "playername"
                "xpos"                                              "0"
                "ypos"                                              "19"
                "zpos"                                              "3"
                "wide"                                              "f0"
                "tall"                                              "8"
                "visible"                                           "1"
                "textinsetx"                                        "1"
                "textinsety"                                        "1"
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
                "font"                                              "bh_Font16DropShadow"
                "fgcolor_override"                                  "bh_byellow"
                "wide"                                              "f0"
                "tall"                                              "19"
            }
        }
    }
}