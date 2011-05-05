﻿
----------------------------------------------------------------------------
-- Per Class Config (overwrite general)
-- Class need to be UPPERCASE
----------------------------------------------------------------------------
local T, C, L = unpack(Tukui) -- Import: T - functions, constants, variables; C - config; L - locales

if T.myclass == "PRIEST" then
	-- do some config!
end

if T.myclass == "PALADIN" then
C["unitframes"]["cblatency"] = true
	C.unitframes.healcomm = true
end

----------------------------------------------------------------------------
-- Per Character Name Config (overwrite general and class)
-- Name need to be case sensitive
----------------------------------------------------------------------------

if T.myname == "Tukz" then
	-- yeah my default config is not really like default tukui.
	C.actionbar.hotkey = false
	C.actionbar.hideshapeshift = true
	C.unitframes.enemyhcolor = true
end