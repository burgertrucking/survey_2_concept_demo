-- Testing custom naming for Ralsei
-- Right now just loads the savefile name and nothing else
local character, super = HookSystem.hookScript("ralsei")

function character:init()
    super.init(self)
    self.name = Game.save_name
end

return character
