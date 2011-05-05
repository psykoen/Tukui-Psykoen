local T, C, L = unpack(Tukui)

psykoen_welcome = "Welcome to |cffC495DDTukui|r Psykoen edit, version 3 "
psykoen_welcome2 = "Welcome to |cffC495DDTukui|r, version "

------------------------------------------------------------------------
--	Addon Loaded
------------------------------------------------------------------------

local function load()
	SetCVar("UnitNameNPC", 1)
	SetCVar("ChatBubbles", 1)
	SetCVar("ChatBubblesParty", 1)
		
end


------------------------------------------------------------------------
--	On login function, look for some infos!
------------------------------------------------------------------------

local TukuiPsykoenOnLogon = CreateFrame("Frame")
TukuiPsykoenOnLogon:RegisterEvent("ADDON_LOADED")
TukuiPsykoenOnLogon:SetScript("OnEvent", function(self, event)
	self:UnregisterEvent("ADDON_LOADED")
	
	print(psykoen_welcome)
	print(psykoen_welcome2..T.version)
end)