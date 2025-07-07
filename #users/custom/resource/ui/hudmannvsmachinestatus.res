"Resource/UI/HudMannVsMachineStatus.res"
{
    "bh_FixOverlap"
    {
        "ypos_minmode"                                              "67"
    }

    "WaveCompleteSummaryPanel"
    {
        "ypos"                                                      "158"
    }

    "BossStatusPanel"
    {
        "ypos"                                                      "0"
    }

    "InWorldCurrencyPanel"
    {
        "ypos"                                                      "r6"
    }

    "WarningSwoop"
    {
        "ypos"                                                      "13"
    }

    "UpgradeLevelContainer"
    {
        "ypos"                                                      "13"
    }

    "ServerChangeMessage"
    {
        "ypos"                                                      "13"

        "Background"
        {
            "ypos"                                                  "r-6969"
            "wide"                                                  "0"
            "tall"                                                  "0"
            "visible"                                               "0"
            "enabled"                                               "0"
        }

        "ServerChangeLabel"
        {
            "ypos"                                                  "3"
            "tall"                                                  "16"
        }

        "bh_ServerChangeLabelShadow"
        {
            "pin_to_sibling"                                        "ServerChangeLabel"
            "ControlName"                                           "CExLabel"
            "fieldName"                                             "bh_ServerChangeLabelShadow"
            "font"                                                  "HudFontSmall"
            "textAlignment"                                         "center"
            "labelText"                                             "%servermessage%"
            "xpos"                                                  "-1"
            "ypos"                                                  "-1"
            "zpos"                                                  "-1"
            "wide"                                                  "300"
            "tall"                                                  "16"
            "visible"                                               "1"
            "enabled"                                               "1"
            "fgcolor"                                               "bh_Shadow"
        }
    }
}