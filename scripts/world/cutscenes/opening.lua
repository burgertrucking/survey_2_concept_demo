--- @param cutscene Cutscene
return function(cutscene)
    cutscene:fadeOut(0)
    Game.world:transitionMusic({ "drone", 0.5, 0.5 })
    cutscene:wait(0.5)

    -- based on testmod centerText in testing.this_is_a_test_mod
    --- @param voice? string Filename in `assets/sound/voice`, leaving blank defaults to no typer sound
    local function writeText(str, voice)
        local text = DialogueText(str, 0, 16, 640, 480,
                                  { align = "center" })
        text.state.typing_sound = voice
        text.layer = WORLD_LAYERS["top"] + 100
        text.parallax_x = 0
        text.parallax_y = 0
        Game.world:addChild(text)

        text.advance_callback = function ()
                text:remove()
        end

        cutscene:wait(function () return text:isRemoved() end)
    end

    writeText("I gotta replace this at some point.", "susie")
    writeText("Here's another string.", "noelle")
    writeText("Calling the same function...", "ralsei")
    writeText("Y'know, I often misspell function as fuction.", "default")
    writeText("I also misspell misspell as mispell.")

    cutscene:fadeIn(0)
    Game.world.music:stop()

end
