-- yeah the car is an actor 
local actor, super = Class(Actor, "torcar")

function actor:init()
    super.init(self)

    self.name = "Car" -- prevents crash in object selection menu
    self.width = 78
    self.height = 74

    self.path = "npcs/torcar"
    self.default = "walk"

    self.animations = {
        ["idle"] = {"walk/down", 0.1, true},
    }

    self.mirror_sprites = {
        ["walk/down"] = "walk/up",
        ["walk/up"] = "walk/down",
        ["walk/left"] = "walk/left",
        ["walk/right"] = "walk/right",
    }
end

return actor
