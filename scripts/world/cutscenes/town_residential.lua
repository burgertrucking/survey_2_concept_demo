return {
    -- called from town_krisyard.introdrive
    introdrive2 = function(cutscene)
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
        cutscene:wait(0.1) -- wait til end of measure (~27.6s)
        cutscene:after(function()
            -- STUB
            cutscene:loadMap("room3", 0, 0)
            Game.world:startCutscene("room3.starwalkerconvo")
        end)
    end,
}
