return {
    -- called from town_krisyard.introcar
    introcar2 = function(cutscene)
        -- measures 13 through 16
        -- TEMP i cant figure out how to get keepmusic working
        Game.world:transitionMusic("introcar")
        Game.world.music:seek(20.65) -- cutscene ends at ~20.65 seconds in previous room
        local car = cutscene:getCharacter("torcar")
        local kris = Game.world.player
        cutscene:setSprite(kris, "") -- HACK
        cutscene:detachCamera()
        cutscene:panToSpeed(0, 440, 7)
        cutscene:wait(cutscene:walkToSpeed(car, 340, 460, 7))
        cutscene:panToSpeed(1140, 440, 7)
        cutscene:wait(cutscene:walkToSpeed(car, 1140, 460, 7))
        cutscene:wait(cutscene:walkToSpeed(car, 1140, 750, 7))
        cutscene:wait(0.068) -- wait til end of measure 16 (~27.6s)
        cutscene:after(function()
            -- TEMP change residential to commercial later
            cutscene:loadMap("town_residential", 0, 0)
            Game.world:startCutscene("town_residential.introcar3")
        end)
    end,

    -- TEMP move to town_commercial later
    introcar3 = function(cutscene)
        -- measures 17 through 18
        -- TEMP
        Game.world:transitionMusic("introcar")
        Game.world.music:seek(27.6)
        local car = cutscene:getCharacter("torcar")
        local kris = Game.world.player
        cutscene:setSprite(kris, "") -- HACK
        cutscene:detachCamera()
        cutscene:panToSpeed(0, 750, 6)
        cutscene:wait(cutscene:walkToSpeed(car, 340, 750, 6))
        cutscene:wait(0.155) -- wait til end of measure 18 (~31.3s)
        cutscene:after(function()
            -- TEMP change residential to govt later
            cutscene:loadMap("town_residential", 0, 0)
            Game.world:startCutscene("town_residential.introcar4")
        end)
    end,

    -- TEMP move to town_govt later
    introcar4 = function(cutscene)
        -- measures 19 through 21
        -- TEMP
        Game.world:transitionMusic("introcar")
        Game.world.music:seek(31.3)
        local car = cutscene:getCharacter("torcar")
        local kris = Game.world.player
        cutscene:setSprite(kris, "") -- HACK
        cutscene:detachCamera()
        cutscene:panToSpeed(0, 440, 7)
        cutscene:wait(cutscene:walkToSpeed(car, 340, 460, 7))
        cutscene:panToSpeed(640, 440, 7)
        cutscene:wait(cutscene:walkToSpeed(car, 1040, 460, 7))
        cutscene:wait(0.25) -- wait til end of measure 21 (~36.5s)
        cutscene:after(function()
            Game.world:transitionMusic("")
        end)
    end,
}
