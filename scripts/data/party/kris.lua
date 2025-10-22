-- NOTE: Internally, Frisk is still referred to as "kris" due to being a hook
local character, super = HookSystem.hookScript("kris")

function character:init()
    super.init(self)
    self.name = "Frisk"
    self.name_sprite = "party/kris/name-frisk"
end

return character
