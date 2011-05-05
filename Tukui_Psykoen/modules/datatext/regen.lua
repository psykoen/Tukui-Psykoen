local T, C, L = unpack(Tukui)
if not C["datatext"].psykoenregen and not C["datatext"].psykoenregen > 0 then return end

local regen

local Stat = CreateFrame("Frame")
Stat:SetFrameStrata("BACKGROUND")
Stat:SetFrameLevel(3)

local Text = TukuiInfoLeft:CreateFontString(nil, "OVERLAY")
Text:SetFont(C["media"].font, C["datatext"].fontsize)
Text:SetShadowColor(0, 0, 0)
Text:SetShadowOffset(1.25, -1.25)
T.PP(C["datatext"].psykoenregen, Text)

Stat:RegisterEvent("PLAYER_ENTERING_WORLD")
Stat:RegisterEvent("PLAYER_REGEN_DISABLED")
Stat:RegisterEvent("PLAYER_REGEN_ENABLED")
Stat:RegisterEvent("UNIT_STATS")
Stat:RegisterEvent("UNIT_AURA")
Stat:SetScript("OnEvent", function(self)
	local base, casting = GetManaRegen()

	if InCombatLockdown() then
		regen = floor(casting*5)
	else
		regen = floor(base*5)		
	end
	
	Text:SetText(regen.." "..MANA_REGEN_ABBR)
end)