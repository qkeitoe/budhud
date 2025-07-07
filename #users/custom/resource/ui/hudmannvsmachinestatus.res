"Resource/UI/HudMannVsMachineStatus.res"
{
    "WaveStatusPanel"
    {
        "ypos"                                                      "-14"
    }

    "WaveCompleteSummaryPanel"
    {
        "ypos"                                                      "145"
    }

    "ServerChangeMessage"
    {
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