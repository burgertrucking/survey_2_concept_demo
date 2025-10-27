-- NOTE: Internally, Suzy is still referred to as "susie" due to being a hook
local character, super = HookSystem.hookScript("susie")

function character:init()
    super.init(self)
    local unfun = Game:getFlag("unfun")
    if unfun ~= 6 then self.name = "Suzy" end
    self.name_sprite = nil
end

return character
