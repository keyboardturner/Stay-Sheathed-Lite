local sheathState = CreateFrame("Frame")

sheathState:RegisterEvent("UNIT_MODEL_CHANGED")
sheathState:RegisterEvent("UNIT_TARGET")

local function doSheath()
	--[[ --this will be for later, rework planned soon(tm)
	local  class1, class2, class3 = UnitClass("player")
	if class2 == "MONK" then
		return
	end
	]]
	if (GetSheathState() == 2) then
		ToggleSheath()
	end
end

local function sheathChecker()
	C_Timer.After(10, doSheath)
end

sheathState:SetScript("OnEvent", sheathChecker)