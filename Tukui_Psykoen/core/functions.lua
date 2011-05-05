local T, C, L = unpack(Tukui)

--override functions

local TukUI_P_Func = T.PP

-- datatext panel position
T.PP = function(p, obj)
	
	local override = false
	local left = TukuiInfoLeft
	local right = TukuiInfoRight
	local mapleft = TukuiMinimapStatsLeft
	local mapright = TukuiMinimapStatsRight
	local centre = TukuiInfoCentre
	local centre2 = TukuiInfoCentre2
	local topright = TukuiMinimapStatsTop
	local topleft = LeftDataText1
	local top = LeftDataText2
	local profstats = LeftDataText3
	local profstats2 = LeftDataText4
	local centre2l = TukuiInfoCentre2Left
	local centre2r = TukuiInfoCentre2Right
	
	if p == 1 then
		obj:SetParent(left)
		obj:SetHeight(left:GetHeight())
		obj:SetPoint("LEFT", left, 30, 0)
		obj:SetPoint('TOP', left)
		obj:SetPoint('BOTTOM', left)
		override = true
	elseif p == 2 then
		obj:SetParent(left)
		obj:SetHeight(left:GetHeight())
		obj:SetPoint('TOP', left)
		obj:SetPoint('BOTTOM', left)
	elseif p == 3 then
		obj:SetParent(left)
		obj:SetHeight(left:GetHeight())
		obj:SetPoint("RIGHT", left, -30, 0)
		obj:SetPoint('TOP', left)
		obj:SetPoint('BOTTOM', left)
	elseif p == 4 then
		obj:SetParent(right)
		obj:SetHeight(right:GetHeight())
		obj:SetPoint("LEFT", right, 30, 0)
		obj:SetPoint('TOP', right)
		obj:SetPoint('BOTTOM', right)
	elseif p == 5 then
		obj:SetParent(right)
		obj:SetHeight(right:GetHeight())
		obj:SetPoint('TOP', right)
		obj:SetPoint('BOTTOM', right)
	elseif p == 6 then
		obj:SetParent(right)
		obj:SetHeight(right:GetHeight())
		obj:SetPoint("RIGHT", right, -30, 0)
		obj:SetPoint('TOP', right)
		obj:SetPoint('BOTTOM', right)
		override = true
	elseif p == 9 then
        obj:SetHeight(centre:GetHeight())
        obj:SetPoint("LEFT", centre, "LEFT", 30, 0)
    elseif p == 10 then
        obj:SetHeight(centre:GetHeight())
        obj:SetPoint("CENTER", centre, "CENTER", -75, 0)
    elseif p == 11 then
        obj:SetHeight(centre:GetHeight())
        obj:SetPoint("CENTER", centre, "CENTER", 75, 0)
    elseif p == 12 then
        obj:SetHeight(centre:GetHeight())
        obj:SetPoint("RIGHT", centre, "RIGHT", -30, 0)
	elseif p == 13 then
        obj:SetHeight(centre2:GetHeight())
        obj:SetPoint("LEFT", centre2, "LEFT", 30, 0)
    elseif p == 14 then
        obj:SetHeight(centre2:GetHeight())
        obj:SetPoint("CENTER", centre2, "CENTER", -75, 0)
    elseif p == 15 then
        obj:SetHeight(centre2:GetHeight())
        obj:SetPoint("CENTER", centre2, "CENTER", 75, 0)
    elseif p == 16 then
        obj:SetHeight(centre2:GetHeight())
        obj:SetPoint("RIGHT", centre2, "RIGHT", -30, 0)
	elseif p == 17 then
		obj:SetParent(topleft)
		obj:SetHeight(topleft:GetHeight())
		obj:SetPoint("LEFT", topleft, 30, 0)
		obj:SetPoint('TOP', topleft)
		obj:SetPoint('BOTTOM', topleft)
	elseif p == 18 then
		obj:SetParent(topleft)
		obj:SetHeight(topleft:GetHeight())
		obj:SetPoint('TOP', topleft)
		obj:SetPoint('BOTTOM', topleft)
	elseif p == 19 then
		obj:SetParent(top)
		obj:SetHeight(top:GetHeight())
		obj:SetPoint("RIGHT", topleft, -30, 0)
		obj:SetPoint('TOP', topleft)
		obj:SetPoint('BOTTOM', topleft)
	elseif p == 20 then
		obj:SetParent(top)
		obj:SetHeight(top:GetHeight())
		obj:SetPoint("LEFT", top, 30, 0)
		obj:SetPoint('TOP', top)
		obj:SetPoint('BOTTOM', top)
	elseif p == 21 then
		obj:SetParent(top)
		obj:SetHeight(top:GetHeight())
		obj:SetPoint('TOP', top)
		obj:SetPoint('BOTTOM', top)
	elseif p == 22 then
		obj:SetParent(top)
		obj:SetHeight(top:GetHeight())
		obj:SetPoint("RIGHT", top, -30, 0)
		obj:SetPoint('TOP', top)
		obj:SetPoint('BOTTOM', top)
	elseif p == 26 then
		obj:SetParent(centre2l)
		obj:SetHeight(centre2l:GetHeight())
		obj:SetPoint('TOP', centre2l)
		obj:SetPoint('BOTTOM', centre2l)
	elseif p == 27 then
		obj:SetParent(centre2r)
		obj:SetHeight(centre2r:GetHeight())
		obj:SetPoint('TOP', centre2r)
		obj:SetPoint('BOTTOM', centre2r)
	end
	
	if TukuiMinimap then
	    if p == 7 then
			obj:SetParent(mapleft)
			obj:SetHeight(mapleft:GetHeight())
			obj:SetPoint('TOP', mapleft)
			obj:SetPoint('BOTTOM', mapleft)
		elseif p == 8 then
			obj:SetParent(mapright)
			obj:SetHeight(mapright:GetHeight())
			obj:SetPoint('TOP', mapright)
			obj:SetPoint('BOTTOM', mapright)
	    elseif p == 23 then
			obj:SetHeight(topright:GetHeight())
			obj:SetPoint("LEFT", topright, 20, 0)
		elseif p == 24 then
			obj:SetHeight(topright:GetHeight())
			obj:SetPoint("TOP", topright, 0, 0)
		elseif p == 25 then
			obj:SetHeight(topright:GetHeight())
			obj:SetPoint("RIGHT", topright, -20, 0)
		end
	end
	
	if not override then
		TukUI_P_Func(p,obj)
	end	
end