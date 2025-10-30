--- @param cutscene Cutscene
return function(cutscene)
    -- STUB
    Kristal.Console.env.print("testing cutscene")
    cutscene:playSound("oof")

    -- Everything below onwards is kanged directly from the Kristal testmod
    local function centerText(str)
        local text = DialogueText(str, 0, 16, 640, 480,
                                  { align = "center" })
        text.layer = WORLD_LAYERS["top"] + 100
        text.parallax_x = 0
        text.parallax_y = 0
        Game.world:addChild(text)

        text.advance_callback = function ()
            Game.world.timer:tween(1, text, { alpha = 0 }, "linear", function ()
                text:remove()
            end)
        end

        cutscene:wait(function () return text:isRemoved() end)
    end

    cutscene:fadeOut(0)

    centerText(
        "Hello.[wait:10]\n\n" ..
        "I gotta replace this at some point.")

    cutscene:fadeIn(0)

end
