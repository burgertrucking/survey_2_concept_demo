-- DEBUG: Storing a reference to Kristal's Console so all prints log directly there
local env = Kristal.Console.env
-- These are given values whenver the mod is FIRST loaded (ie. they persist after a nosave death)
local fun = nil
local unfun = nil

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
    if cleansave then
        env.print("Starting from a fresh save file")
        if not fun and not unfun then Mod:genFunValues() end
        Mod:writeFunValues()
        -- need to rename Kris and Susie if their corresponding un/fun values are 6 (otherwise names will be defaults)
        if Game:getFlag("fun") == 6 then Mod:renameChara("kris", "Kris") end
        if Game:getFlag("unfun") == 6 then Mod:renameChara("susie", "Susie") end
    end

    Game.world:registerCall("Call Home", "calls.home")
    -- Mod:registerTestCalls() -- DEBUG
end

function Mod:postInit(cleansave)
    env.print("Called Mod:postInit()")
    if cleansave then
        Game:setBorder("none")
        Game.world:loadMap("krisroom", "spawn_intro", "left")
        Game.world:startCutscene("opening")
    end
end


-- the rest are utility functions that i'm not sure where else to put
function Mod:genFunValues()
    fun = Utils.random(1, 40, 1)
    unfun = Utils.random(1, 40, 1)
    env.print("Generated fun == " .. fun .. ", unfun == " .. unfun)
end

function Mod:writeFunValues()
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

--- NOTE: Seems to autoplay most recently played song upon cutscene end, must manually stop in returning cutscene
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
