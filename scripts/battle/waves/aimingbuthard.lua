local AimingButHard, super = Class(Wave)

function AimingButHard:onStart()
    -- Every 0.1 seconds...
    self.timer:every(1/10, function()
        -- Get all enemies that selected this wave as their attack
        local attackers = self:getAttackers()

        -- Loop through all attackers
        for _, attacker in ipairs(attackers) do

            -- Get the attacker's center position
            local x, y = attacker:getRelativePos(attacker.width/2, attacker.height/2)

            -- Get the angle between the bullet position and the soul's position
            local angle = Utils.angle(x, y, Game.battle.soul.x, Game.battle.soul.y)

            -- Spawn smallbullet angled towards the player with speed 20 (see scripts/battle/bullets/smallbullet.lua)
            self:spawnBullet("smallbullet", x, y, angle, 20)
        end
    end)
end

function AimingButHard:update()
    -- Code here gets called every frame

    super.update(self)
end

return AimingButHard
