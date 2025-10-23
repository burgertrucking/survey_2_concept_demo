-- DEBUG: Storing a reference to Kristal's Console so all prints log directly there
local env = Kristal.Console.env

function Mod:init()
    env.print("Loaded "..self.info.name.."!")
end

function Mod:generateFunValues()
    local fun = Utils.random(1, 40, 1)
    local unfun = Utils.random(1, 40, 1)
    Game:setFlag("fun", fun)
    Game:setFlag("unfun", unfun)
end

function Mod:printFunValues()
    local fun = Game:getFlag("fun", nil)
    local unfun = Game:getFlag("unfun", nil)
    env.print("Fun: " .. fun .. " Unfun: " .. unfun)
end

function Mod:setFun(val)
    Game:setFlag("fun", val)
end

function Mod:setUnfun(val)
    Game:setFlag("unfun", val)
end

function Mod:renameRalsei(name)
    local ralsei = Game:getPartyMember("ralsei")
    ralsei.name = name
end

function Mod:setRalseiName(name)
    Game:setFlag("ralsei_name", name)
    rname = Game:getFlag("ralsei_name", nil) -- confirm it saved
    env.print("Saved Ralsei's name as " .. rname)
    renameRalsei(name)
end
