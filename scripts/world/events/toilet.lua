local Toilet, super = Class(Event)

function Toilet:init(data)
    super.init(self, data)
    self.flushcount = 0
end

function Toilet:onInteract(player, dir)
    if self:getFlag("broken") then
        Game.world:startCutscene("torbathroom.toiletbroken")
    else 
        self.flushcount = self.flushcount + 1
        Kristal.Console.env.print(self.flushcount)
        if self.flushcount == 50 then 
            Game.world:startCutscene("torbathroom.toilet50x")
            self:setFlag("broken", true)
        else
            local n = Utils.random(1, 8, 1)
            if n == 1 then Assets.playSound("uuuuuuhu")
            else Assets.playSound("flush")
            end
            self:addFlag("flushed", 1)

            -- NOTE idk why but these cutscenes don't do the automatic text alignment formatting
            if self.flushcount == 5 then
                Game.world:startCutscene("torbathroom.toilet5x")
            elseif self.flushcount == 15 then
                Game.world:startCutscene("torbathroom.toilet15x")
            elseif self.flushcount == 25 then
                Game.world:startCutscene("torbathroom.toilet25x")
            end
        end
    end
    return true
end

return Toilet
