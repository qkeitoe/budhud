"Resource/UI/HudMedicCharge.res"
{
    "bh_ResistPin"
    {
        "fieldName"                                                 "bh_ResistPin"
        "xpos"                                                      "c-10"
        "ypos"                                                      "c10"
    }

    "bh_ChargePin"
    {
        "fieldName"                                                 "bh_ChargePin"
        "xpos"                                                      "c84"
        "ypos"                                                      "cs-0.5+85"
        "wide"                                                      "65"
        "tall"                                                      "21"
        "labelText"                                                 ""
    }

    "ChargeMeter"
    {
        "ypos"                                                      "c82"
    }

    "ChargeMeter1"
    {
        "pin_to_sibling"                                            "bh_ChargePin"
        "pin_corner_to_sibling"                                     "PIN_TOPLEFT"
        "pin_to_sibling_corner"                                     "PIN_TOPLEFT"
        "wide"                                                      "31"
        "tall"                                                      "9"
        "xpos"                                                      "-1"
        "ypos"                                                      "-1"
    }

    "ChargeMeter2"
    {
        "pin_to_sibling"                                            "bh_ChargePin"
        "pin_corner_to_sibling"                                     "PIN_TOPRIGHT"
        "pin_to_sibling_corner"                                     "PIN_TOPRIGHT"
        "wide"                                                      "31"
        "tall"                                                      "9"
        "xpos"                                                      "-1"
        "ypos"                                                      "-1"
    }

    "ChargeMeter3"
    {
        "pin_to_sibling"                                            "bh_ChargePin"
        "pin_corner_to_sibling"                                     "PIN_BOTTOMLEFT"
        "pin_to_sibling_corner"                                     "PIN_BOTTOMLEFT"
        "wide"                                                      "31"
        "tall"                                                      "9"
        "xpos"                                                      "-1"
        "ypos"                                                      "-1"
    }

    "ChargeMeter4"
    {
        "pin_to_sibling"                                            "bh_ChargePin"
        "pin_corner_to_sibling"                                     "PIN_BOTTOMRIGHT"
        "pin_to_sibling_corner"                                     "PIN_BOTTOMRIGHT"
        "wide"                                                      "31"
        "tall"                                                      "9"
        "xpos"                                                      "-1"
        "ypos"                                                      "-1"
    }

    "IndividualChargesLabel"
    {
        "pin_to_sibling"                                            "bh_ChargePin"
        "xpos"                                                      "0"
        "ypos"                                                      "0"
        "wide"                                                      "65"
        "tall"                                                      "21"
        "labelText"                                                 ""
        "bgcolor_override"                                          "bh_Shadow"
        "proportionaltoparent"                                      "1"
    }

    "ChargeLabel"
    {
        "xpos"                                                      "c-10"
        "ypos"                                                      "c9"
        "font"                                                      "bh_Font32"
    }

    "ChargeLabelShadow"
    {
        "pin_to_sibling"                                            "ChargeLabel"
        "ControlName"                                               "CExLabel"
        "fieldName"                                                 "ChargeLabelShadow"
        "xpos"                                                      "-1"
        "ypos"                                                      "-1"
        "zpos"                                                      "2"
        "wide"                                                      "250"
        "tall"                                                      "150"
        "autoResize"                                                "1"
        "pinCorner"                                                 "2"
        "visible"                                                   "1"
        "enabled"                                                   "1"
        "tabPosition"                                               "0"
        "labelText"                                                 "#TF_UberchargeMinHUD"
        "textAlignment"                                             "center"
        "dulltext"                                                  "0"
        "brighttext"                                                "0"
        "font"                                                      "bh_Font32"
        "fgcolor"                                                   "bh_Shadow"
    }

    "ResistIcon"
    {
        "pin_to_sibling"                                            "bh_ResistPin"
        "wide"                                                      "20"
        "tall"                                                      "20"
        "alpha"                                                     "175"
    }
}