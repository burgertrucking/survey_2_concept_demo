local Encounter, super = HookSystem.hookScript(Encounter)

-- Changing default victory text to remove any mention of EXP, since it's never important
function Encounter:getVictoryText(text, money, xp)
    local txt = nil
    if not StringUtils.contains(text, "stronger.") then
        txt = "* You won!\n* Got " .. money .. " "..Game:getConfig("darkCurrencyShort").."."
    end
    return txt
end

return Encounter
