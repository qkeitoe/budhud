"Resource/UI/WaveStatusPanel.res"
{
    "Background"
    {
        "ypos"                                                      "r-6969"
        "wide"                                                      "0"
        "tall"                                                      "0"
        "visible"                                                   "0"
        "enabled"                                                   "0"
    }

    "WaveCountLabel"
    {
        "ypos"                                                      "16"
        "tall"                                                      "12"
    }

    "bh_WaveCountLabelShadow"
    {
        "pin_to_sibling"                                            "WaveCountLabel"
        "ControlName"                                               "CExLabel"
        "fieldName"                                                 "bh_WaveCountLabelShadow"
        "font"                                                      "HudFontSmallestBold"
        "fgcolor"                                                   "bh_Shadow"
        "xpos"                                                      "0"
        "ypos"                                                      "-1"
        "zpos"                                                      "5"
        "wide"                                                      "200"
        "tall"                                                      "12"
        "visible"                                                   "1"
        "enabled"                                                   "1"
        "textAlignment"                                             "center"
        "labelText"                                                 "%wave_count%"
    }

    "ProgressBar"
    {
        "ypos"                                                      "16"
    }

    "bh_ProgressBarBG"
    {
        "ypos"                                                      "16"
        "fillcolor"                                                 "bh_BGAverage"
    }
}