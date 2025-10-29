local AngryDummy, super = Class(Encounter)

function AngryDummy:init()
    super.init(self)

    -- Text displayed at the bottom of the screen at the start of the encounter
    self.text = "* The dummy is angry!\n* And it brought friends!"

    -- Battle music ("rudebuster_boss" is ruder buster)
    self.music = "rudebuster_boss"
    -- Enables the purple grid battle background
    self.background = true

    -- Add the dummy enemy to the encounter
    self:addEnemy("angrydummy")
    self:addEnemy("angrydummy")
    self:addEnemy("angrydummy")
end

--- Testing victory text replacement
---@param text  string      Current victory text
---@param money integer     Money earned on victory
---@param xp    integer     XP earned on victory
function AngryDummy:getVictoryText(text, money, xp)
    return "* You won!\n* Got " .. money .. " "..Game:getConfig("darkCurrencyShort")..".\n* But was that even worth it?"
end

return AngryDummy
