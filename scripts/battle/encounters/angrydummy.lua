local AngryDummy, super = Class(Encounter)

function AngryDummy:init()
    super.init(self)

    -- Text displayed at the bottom of the screen at the start of the encounter
    self.text = "* The dummy is angry!\n* And it brought friends!"

    -- Battle music ("battle" is rude buster)
    self.music = "battle"
    -- Enables the purple grid battle background
    self.background = true

    -- Add the dummy enemy to the encounter
    self:addEnemy("angrydummy")
    self:addEnemy("angrydummy")
    self:addEnemy("angrydummy")
end

return AngryDummy
