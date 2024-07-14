"Resource/UI/MatchMakingDashboardPlayList.res"
{
    "ExpandableList"
    {
        "wide"                                                      "f0"
    }

    "playlist"
    {
        "xpos"                                                      "r220"
        "ypos"                                                      "0"
        "tall"                                                      "f0"
    }

    "CloseButton"
    {
        "ypos"                                                      "0"
        "zpos"                                                      "99"
        "wide"                                                      "f0"
        "tall"                                                      "f0"

        "textAlignment"                                             "west"
    }

    "bh_BackgroundFooter"
    {
        "ControlName"                                               "ImagePanel"
        "fieldName"                                                 "bh_BackgroundFooter"
        "xpos"                                                      "0"
        "ypos"                                                      "420"
        "zpos"                                                      "0"
        "wide"                                                      "f0"
        "tall"                                                      "61"
        "autoResize"                                                "0"
        "pinCorner"                                                 "0"
        "labeltext"                                                 ""
        "visible"                                                   "1"
        "enabled"                                                   "1"
        "fillcolor"                                                 "bh_Theme_BG20"
        "border"                                                    "bh_b_N"
        "image"                                                     ""
        "paintbackgroundtype"                                       "0"
    }

    "FriendsContainer"
    {
        "ControlName"                                               "EditablePanel"
        "fieldname"                                                 "FriendsContainer"
        "xpos"                                                      "0"
        "ypos"                                                      "420"
        "zpos"                                                      "101"
        "wide"                                                      "f0"
        "tall"                                                      "61"
        "visible"                                                   "1"

        "border"                                                    "NoBorder"

        "SteamFriendsList"
        {
            "ControlName"                                           "CSteamFriendsListPanel"
            "fieldname"	                                            "SteamFriendsList"
            "xpos"                                                  "0"
            "ypos"                                                  "2"
            "zpos"                                                  "500"
            "wide"                                                  "f0"
            "tall"                                                  "59"
            "visible"                                               "1"
            "proportionaltoparent"                                  "1"

            "columns_count"                                         "5"
            "inset_x"                                               "3"
            "inset_y"                                               "3"
            "row_gap"                                               "3"
            "column_gap"                                            "3"
            "restrict_width"                                        "0"

            "friendpanel_kv"
            {
                "wide"                                              "166"
                "tall"                                              "25"
            }

            "ScrollBar"
            {
                "ControlName"                                       "ScrollBar"
                "FieldName"                                         "ScrollBar"
                "xpos"                                              "rs1-1"
                "ypos"                                              "0"
                "tall"                                              "f0"
                "wide"                                              "5"
                "zpos"                                              "1000"
                "nobuttons"                                         "1"
                "proportionaltoparent"                              "1"

                "Slider"
                {
                    "fgcolor_override"                              "TanDark"
                }
            }
        }
    }
}