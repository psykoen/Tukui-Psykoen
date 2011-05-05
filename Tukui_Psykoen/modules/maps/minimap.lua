local T, C, L = unpack(Tukui) -- Import: T - functions, constants, variables; C - config; L - locales

-- Move Minimap
TukuiMinimap:ClearAllPoints()
TukuiMinimap:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -24, -42)
TukuiMinimap:Size(144)

Minimap:ClearAllPoints()
Minimap:SetPoint("TOPLEFT", TukuiMinimap, "TOPLEFT", T.Scale(2), T.Scale(-2))
Minimap:SetPoint("BOTTOMRIGHT", TukuiMinimap, "BOTTOMRIGHT", T.Scale(-2), T.Scale(2))