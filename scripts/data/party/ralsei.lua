-- Testing custom naming for Ralsei
local character, super = HookSystem.hookScript("ralsei")

function character:init()
    super.init(self)
    self.name = Game:getFlag("ralsei_name", "Ralsei")
    self.name_sprite = nil
end

return character
