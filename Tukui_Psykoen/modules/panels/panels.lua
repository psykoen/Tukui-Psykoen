local T, C, L = unpack(Tukui)

--  Info Centre
local icentre = CreateFrame("Frame", "TukuiInfoCentre", UIParent)
icentre:CreatePanel("Default", 1, 23, "BOTTOM", UIParent, "BOTTOM", 0, 14)
icentre:SetWidth((T.buttonsize * 18) + (T.buttonspacing * 21) + 8)

--  Info Centre 2
local icentre2 = CreateFrame("Frame", "TukuiInfoCentre2", UIParent)
icentre2:CreatePanel("Default", 1, 23, "TOPLEFT", TukuiBar1, "TOPRIGHT", -478, 27)
--icentre2:SetPoint("TOPLEFT", TukuiBar1, "TOPRIGHT", T.Scale(2), 0)
icentre2:SetWidth((T.buttonsize * 18) + (T.buttonspacing * 21) + 8)

-- Info Center 2 left and right
local icentre2l = CreateFrame("Frame", "TukuiInfoCentre2Left", UIParent)
icentre2l:CreatePanel("Default", 90, 23, "RIGHT", icentre2, "LEFT", -3, 0)

local icentre2r = CreateFrame("Frame", "TukuiInfoCentre2Right", UIParent)
icentre2r:CreatePanel("Default", 90, 23, "LEFT", icentre2, "RIGHT", 3, 0)

--Datatext panels
local dleft1 = CreateFrame("Frame", "LeftDataText1", UIParent)
dleft1:CreatePanel("Default", T.InfoLeftRightWidth, 19, "TOPLEFT", UIParent, "TOPLEFT", 14, T.Scale(-22))
dleft1:SetFrameLevel(2)
dleft1:SetFrameStrata("BACKGROUND")

local dleft2 = CreateFrame("Frame", "LeftDataText2", UIParent)
dleft2:CreatePanel("Default", T.InfoLeftRightWidth, 19, "TOP", UIParent, "TOP", 14, T.Scale(-22))
dleft2:SetFrameLevel(2)
dleft2:SetFrameStrata("BACKGROUND")

--MinimapStatsTop
local minimapstatstop = CreateFrame("Frame", "TukuiMinimapStatsTop", TukuiMinimap)
minimapstatstop:CreatePanel("Default", T.InfoLeftRightWidth, 19, "TOPRIGHT", TukuiMinimap, "TOPRIGHT", 0, T.Scale(22))

--actionbars
TukuiBar1:ClearAllPoints()
TukuiBar1:CreatePanel("Default", 1, 1, "BOTTOM", icentre, "TOP", 0, 4)
TukuiBar1:SetWidth((T.buttonsize * 12) + (T.buttonspacing * 13))
TukuiBar1:SetHeight((T.buttonsize * 2) + (T.buttonspacing * 3))

TukuiBar4:ClearAllPoints()
TukuiBar4:CreatePanel("Default", 1, 1, "BOTTOM", icentre, "TOP", 0, 4)
TukuiBar4:SetWidth((T.buttonsize * 12) + (T.buttonspacing * 13))
TukuiBar4:SetHeight((T.buttonsize * 2) + (T.buttonspacing * 3))

--adding and deleting stuff
TukuiLineToABLeft:ClearAllPoints()
TukuiLineToABLeft:SetBackdrop(nil)
TukuiLineToABLeft:SetHeight(T.Scale(167))
TukuiLineToABLeft:SetWidth(T.Scale(196))
TukuiLineToABLeft:SetPoint("TOPRIGHT", TukuiInfoCentre, "TOPLEFT", T.Scale(-452), 70)

TukuiLineToABRight:ClearAllPoints()
TukuiLineToABRight:SetBackdrop(nil)
TukuiLineToABRight:SetHeight(T.Scale(167))
TukuiLineToABRight:SetWidth(T.Scale(196))
TukuiLineToABRight:SetPoint("TOPLEFT", TukuiInfoCentre, "TOPRIGHT", T.Scale(452), 70)

TukuiInfoLeftLineVertical:ClearAllPoints()
TukuiInfoLeftLineVertical:SetBackdrop(nil)
TukuiInfoLeftLineVertical:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 14, 30)

TukuiInfoRightLineVertical:ClearAllPoints()
TukuiInfoRightLineVertical:SetBackdrop(nil)
TukuiInfoRightLineVertical:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -14, 30)

if not C["chat"].background then
    -- cube positioning
        TukuiCubeRight:ClearAllPoints()
        TukuiCubeRight:SetPoint("LEFT", icentre, "RIGHT", 4, 0)

        TukuiCubeLeft:ClearAllPoints()
        TukuiCubeLeft:SetPoint("RIGHT", icentre, "LEFT", -4, 0)
end

if C["chat"].background then

TukuiLineToABLeftAlt:SetBackdrop(nil)

TukuiLineToABRightAlt:SetBackdrop(nil)

    -- CUBE AT LEFT, ACT AS A BUTTON (CHAT MENU)
    local cubeleft = CreateFrame("Frame", "TukuiCubeLeft", icentre)
    cubeleft:CreatePanel("Default", 10, 10, "RIGHT", icentre, "LEFT", -4, 0)
    cubeleft:EnableMouse(true)
    cubeleft:SetScript("OnMouseDown", function(self, btn)
	    if TukuiInfoLeftBattleGround and UnitInBattleground("player") then
		    if btn == "RightButton" then
			    if TukuiInfoLeftBattleGround:IsShown() then
				   TukuiInfoLeftBattleGround:Hide()
			else
				TukuiInfoLeftBattleGround:Show()
			end
		end
	end
		
	    if btn == "LeftButton" then	
		    ToggleFrame(ChatMenu)
	    end
    end)

    -- CUBE AT RIGHT, ACT AS A BUTTON (CONFIGUI or BG'S)
    local cuberight = CreateFrame("Frame", "TukuiCubeRight", icentre)
    cuberight:CreatePanel("Default", 10, 10, "LEFT", icentre, "RIGHT", 4, 0)
    if C["bags"].enable then
	    cuberight:EnableMouse(true)
	    cuberight:SetScript("OnMouseDown", function(self)
		    ToggleKeyRing()
	    end)
    end
end