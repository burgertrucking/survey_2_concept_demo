local MovingArenaButHard, super = Class(Wave)

function MovingArenaButHard:init()
    super.init(self)

    -- Initialize timer
    self.siner = 0
end

function MovingArenaButHard:onStart()
    -- Get the arena object
    local arena = Game.battle.arena

    -- Spawn spikes on top of arena
    self:spawnBulletTo(Game.battle.arena, "arenahazard", arena.width/2, 0, math.rad(0))

    -- Spawn spikes on bottom of arena (rotated 180 degrees)
    self:spawnBulletTo(Game.battle.arena, "arenahazard", arena.width/2, arena.height, math.rad(180))

    -- Spawn spikes on the left and right
    self:spawnBulletTo(Game.battle.arena, "arenahazard", 0, arena.height/2, math.rad(270))
    self:spawnBulletTo(Game.battle.arena, "arenahazard", arena.width, arena.height/2, math.rad(90))

    -- Store starting arena position
    self.arena_start_x = arena.x
    self.arena_start_y = arena.y
end

function MovingArenaButHard:update()
    -- Increment timer for arena movement
    self.siner = self.siner + DT

    -- Calculate the arena Y offset
    local offset = math.sin(self.siner * 30) * 60

    -- Move the arena
    Game.battle.arena:setPosition(self.arena_start_x, self.arena_start_y + offset)

    super.update(self)
end

return MovingArenaButHard
