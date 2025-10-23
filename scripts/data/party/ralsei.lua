-- Testing custom naming for Ralsei
local character, super = HookSystem.hookScript("ralsei")

local env = Kristal.Console.env -- DEBUG

function character:init()
    super.init(self)
    self.name = Game:getFlag("ralsei_name", "Ralsei")
    self.name_sprite = nil
end

-- Renames Ralsei
function renameRalsei(name)
    env.print("Renaming Ralsei to " .. name)
    local ralsei = Game:getPartyMember("ralsei")
    ralsei.name = name
end

-- Renames Ralsei, then saves this name to your savefile
function setRalseiName(name)
    Game:setFlag("ralsei_name", name)
    rname = Game:getFlag("ralsei_name", nil)
    env.print("Saved Ralsei's name as " .. rname)
    renameRalsei(name)
end

return character
