-- DEBUG: Storing a reference to Kristal's Console so all prints log directly there
local env = Kristal.Console.env


-- called internally by Kristal on mod load, in this order
function Mod:preInit()
    env.print("Called Mod:preInit()")
end

function Mod:init()
    env.print("Loaded "..self.info.name.."!")
end

---@param savedata?     table       Data from the savefile json
---@param cleansave?    boolean     Is true if the selected save slot was empty
---@param fileslot?     number      The file slot number being loaded (1-3)
function Mod:load(savedata, cleansave, fileslot)
    env.print("Called Mod:load()")
end

function Mod:postInit(cleansave)
    if cleansave then
        env.print("Starting from a fresh save file")
        Mod:genFunValues()
        -- need to rename Kris and Susie if their corresponding un/fun values are 6 (otherwise names will be defaults)
        if Game:getFlag("fun") == 6 then Mod:renameChara("kris", "Kris") end
        if Game:getFlag("unfun") == 6 then Mod:renameChara("susie", "Susie") end
    end

    Mod:registerTestCalls() -- DEBUG
end


-- the rest are utility functions that i'm not sure where else to put
function Mod:genFunValues()
    local fun = Utils.random(1, 40, 1)
    local unfun = Utils.random(1, 40, 1)
    Game:setFlag("fun", fun)
    Game:setFlag("unfun", unfun)
end

--- contrary to what the name may suggest, Chara is not in this game, this function just renames a party member
---@param   chara   string  ID of the character to rename
---@param   name    string  Desired new name
function Mod:renameChara(chara, name)
    local pm = Game:getPartyMember(chara)
    pm.name = name
end

function Mod:setRalseiName(name)
    Game:setFlag("ralsei_name", name)
    local rname = Game:getFlag("ralsei_name", nil) -- confirm it saved
    env.print("Saved Ralsei's name as " .. rname)
    Mod:renameChara("ralsei", name)
end

---@param cutscene?     string      ID of the legend cutscene to play (default "legend")
---@param music?        string      ID of the song to play in the background (default "legend")
function Mod:playLegend(cutscene, music)
    cutscene = cutscene or "legend"
    music = music or "legend"
    local legend = Registry.getLegendCutscene(cutscene)
    local opts = {
        ["music"] = music
    }
    Game:fadeIntoLegend(legend, opts)
end

function Mod:registerTestCalls()
    Game.world:registerCall("Unknown Caller", "calls.test1")
    Game.world:registerCall("Mysterious Caller", "calls.test2")
end
