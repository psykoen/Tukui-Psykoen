local T, C, L = unpack(Tukui) -- Import: T - functions, constants, variables; C - config; L - locales
--------------------------------------------------------------------
-- Mastery
----------------------------------------------------------------

if not C["datatext"].psykoenmastery == nil or C["datatext"].psykoenmastery > 0 then
	local Stat = CreateFrame("Frame")

	local Text  = TukuiInfoLeft:CreateFontString(nil, "OVERLAY")
	Text:SetFont(C.media.font, C["datatext"].fontsize)
	T.PP(C["datatext"].psykoenmastery, Text)

	local int = 1
	
	local function Update(self, t)
		int = int - t
		if int < 0 then
			Text:SetText("Mastery: "..GetCombatRating(26))
			int = 1
		end
	end

	Stat:SetScript("OnUpdate", Update)
	Update(Stat, 10)
end