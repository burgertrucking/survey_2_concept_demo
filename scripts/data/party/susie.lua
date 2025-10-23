-- NOTE: Internally, Suzy is still referred to as "susie" due to being a hook
local character, super = HookSystem.hookScript("susie")

function character:init()
    super.init(self)
    self.name = "Suzy"
    self.name_sprite = nil
end

return character
