local T, C, L = unpack(Tukui) -- Import: T - functions, constants, variables; C - config; L - locales

if not C["actionbar"].enable == true then return end

---------------------------------------------------------------------------
-- Setup Shapeshift Bar
---------------------------------------------------------------------------

-- used for anchor totembar or shapeshiftbar
local TukuiShift = CreateFrame("Frame","TukuiShiftBar",UIParent)
TukuiShift:SetPoint("TOPLEFT", 4, -86)
TukuiShift:SetWidth((T.petbuttonsize * 5) + (T.petbuttonsize * 4))
TukuiShift:SetHeight(10)
TukuiShift:SetFrameStrata("MEDIUM")
TukuiShift:SetMovable(true)
TukuiShift:SetClampedToScreen(true)

-- create the shapeshift bar if we enabled it
local bar = CreateFrame("Frame", "TukuiShapeShift", TukuiShift, "SecureHandlerStateTemplate")
bar:ClearAllPoints()
bar:SetAllPoints(TukuiShift)