local item, super = HookSystem.hookScript("light/ball_of_junk")

function item:onToss()
    Game.world:startCutscene(function(cutscene)
        -- Always show chapter 2+ drop text
        cutscene:text("* You took it from your pocket.[wait:5]\n"..
                      "* You have a [color:yellow]very,[wait:5] very,[wait:5] bad\n"..
                        "feeling[color:reset] about throwing it away.")
        cutscene:text("* Throw it away anyway?")

        local dropped = cutscene:choicer({"Yes", "No"}) == 1

        if dropped then
            for k,storage in pairs(Game.inventory:getDarkInventory().storages) do
                if storage.id ~= "key_items" and storage.id ~= "storage" then
                    for i = 1, storage.max do
                        storage[i] = nil
                    end
                end
            end
            Game.inventory:removeItem(self)

            Assets.playSound("bageldefeat")
            cutscene:text("* Hand shaking,[wait:5] you dropped the\nball of junk on the ground.")
            cutscene:text("* It broke into pieces.")
            cutscene:text("* You felt the bitter tinge of\nregret.")
        else
            cutscene:text("* You breathed a sigh of relief.")
        end
    end)
    return false
end

-- currently unmodified, considering adding additional unique check descriptions
function item:onCheck()
    Game.world:startCutscene(function(cutscene)
        cutscene:text("* \""..self:getName().."\" - "..self:getCheck())

        local comment

        if Game.inventory:getDarkInventory():hasItem("dark_candy") then
            comment = "* It smells like scratch'n'sniff marshmallow stickers."
        end

        comment = Kristal.callEvent(KRISTAL_EVENT.onJunkCheck, self, comment) or comment

        if comment then
            cutscene:text(comment)
        end
    end)
end

function item:getCheck()
    -- Always show chapter 2 check text
    return super.super.getCheck(self)
end

return item
