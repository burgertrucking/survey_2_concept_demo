-- NOTE: Internally, Frisk is still referred to as "kris" due to being a hook
local character, super = HookSystem.hookScript("kris")

function character:init()
    super.init(self)
    local fun = Game:getFlag("fun")
    if fun ~= 6 then self.name = "Frisk" end
    self.name_sprite = nil
end

return character
