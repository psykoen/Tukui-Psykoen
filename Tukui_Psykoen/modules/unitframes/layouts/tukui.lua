local T, C, L = unpack(Tukui)

if not C["unitframes"].enable == true then return end

------------------------------------------------------------------------
--	local variables
------------------------------------------------------------------------


------------------------------------------------------------------------
--	Layout
------------------------------------------------------------------------

-- create and update portraits
local Portrait_PostUpdate = function(Portrait, unit)
	if (not UnitExists(unit) or not UnitIsConnected(unit) or not UnitIsVisible(unit)) then
		Portrait:Hide()
	else
		Portrait:Show()
		Portrait:SetCamera(0)
		-- workaround for setting portrait alpha ...
		Portrait:SetAlpha(0)
		Portrait:SetAlpha(0.25)
	end
end

local changeLayout = function(unit)
	
	self = oUFTukui.units[unit]
	if unit == "player" or unit == "target" then
	    -- Portrait
	    if (C["unitframes"].charportrait == true) then
	        self.Health:SetPoint("TOPLEFT", 0,0)
		    self.Health:SetPoint("TOPRIGHT")			
	
		    self.Portrait:Hide()
		    self.Portrait = CreateFrame("PlayerModel", nil, self.Health)
		    self.Portrait:SetAllPoints(self.Health)
		    self.Portrait.PostUpdate = Portrait_PostUpdate
        end
	end	
	
	
	if unit == "player" then
		-- Player position
		self:ClearAllPoints()
		self:SetPoint("BOTTOMLEFT", InvTukuiActionBarBackground, "TOPLEFT", -125,70)
	end
	
	if unit == "target" then
		-- Target position
		self:ClearAllPoints()
		self:SetPoint("BOTTOMRIGHT", InvTukuiActionBarBackground, "TOPRIGHT", 125, 70)
	end
	
	if (unit == "targettarget") then
		-- Target of Target position
		self:ClearAllPoints()
		self:SetPoint("BOTTOM", InvTukuiActionBarBackground, "TOP", 0,49)
	end
	
	if unit == "pet" then
	-- Pet position
		self:ClearAllPoints()
		self:SetPoint("BOTTOM", InvTukuiActionBarBackground, "TOP", 0,105)
	end
end

oUFTukui:Factory(function(self)		
	
	changeLayout("player")				
	changeLayout("target")
	changeLayout("targettarget")
	changeLayout("pet")
	changeLayout("focus")
	changeLayout("focustarget")
	changeLayout("boss1")
	changeLayout("arena1")
end
)