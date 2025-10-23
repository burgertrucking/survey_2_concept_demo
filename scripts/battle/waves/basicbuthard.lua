local BasicButHard, super = Class(Wave)

function BasicButHard:onStart()
    -- Every 0.05 seconds...
    self.timer:every(1/20, function()
        -- Our X position is offscreen, to the right
        local x = SCREEN_WIDTH + 20
        -- Get a random Y position between the top and the bottom of the arena
        local y = Utils.random(Game.battle.arena.top, Game.battle.arena.bottom)

        -- Spawn smallbullet going left with speed 20 (see scripts/battle/bullets/smallbullet.lua)
        local bullet = self:spawnBullet("smallbullet", x, y, math.rad(180), 25)

        -- Dont remove the bullet offscreen, because we spawn it offscreen
        bullet.remove_offscreen = false
    end)
end

function BasicButHard:update()
    -- Code here gets called every frame

    super.update(self)
end

return BasicButHard
