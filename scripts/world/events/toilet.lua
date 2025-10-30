-- TODO: Make this an interactable (so it can trigger a cutscene)
local Toilet, super = Class(Event)

function Toilet:init(data)
    super.init(self, data)
    Kristal.Console.env.print(data)
end

function Toilet:onInteract(player, dir)
    local n = Utils.random(1, 8, 1)
    if n == 1 then Assets.playSound("uuuuuuhu")
    else Assets.playSound("flush")
    end
    self:addFlag("flushed", 1)

    -- TODO:
    -- * Cutscenes where Toriel gets mad at you after flushing it X amount of times
    -- * Cutscene where if you flush it 100 times, the bathroom floods and you can't flush it anymore
    return true
end

return Toilet
