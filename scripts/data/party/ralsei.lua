-- Testing custom naming for Ralsei
-- Right now just loads the savefile name and nothing else
local character, super = HookSystem.hookScript("ralsei")

function character:init()
    super.init(self)
    self.name = Game.save_name
    self.name_sprite = nil
end

-- Renames Ralsei. Callable from anywhere.
-- Tested by calling from the console
function renameRalsei(name)
    local env = Kristal.Console.env
    env.print("Renaming Ralsei to " .. name)
    local ralsei = Game:getPartyMember("ralsei")
    ralsei.name = name
end

return character
