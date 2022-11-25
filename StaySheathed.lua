local sheathState = CreateFrame("Frame")

sheathState:RegisterEvent("UNIT_MODEL_CHANGED")
sheathState:RegisterEvent("UNIT_TARGET")

local function doSheath()
	if (GetSheathState() == 2) then
		ToggleSheath()
	end
end

local function sheathChecker()
	C_Timer.After(10, doSheath)
end

sheathState:SetScript("OnEvent", sheathChecker)