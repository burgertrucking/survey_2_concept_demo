--- @param cutscene Cutscene
return function(cutscene)
    -- conversation sequence
    cutscene:fadeOut(0)
    Game.world:transitionMusic({ "drone", 0.2, 0.5 })
    cutscene:wait(1)

    -- based on testmod centerText in testing.this_is_a_test_mod
    --- @param voice? string Filename in `assets/sound/voice`, leaving blank defaults to no typer sound
    local function writeText(str, voice)
        local text = DialogueText(str, 32, 32, 576, 416,
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

    writeText(".[wait:5] .[wait:5] .[wait:5]", "mm3")
    writeText("NO ONE CAN CHOOSE WHO THEY ARE IN THIS WORLD.", "mm3")
    writeText(".[wait:3].[wait:3].[wait:3]IS THAT TRULY WHAT YOU BELIEVE?", "mm3")
    writeText("PERHAPS.", "mm3")
    writeText("PERHAPS THAT IS TRUE.", "mm3")
    writeText("BUT,[wait:5] CONSIDER THIS:", "mm3")
    writeText("OUR LIVES ARE DEFINED BY OUR CHOICES,[wait:5] NOT WHAT WE ARE BORN INTO.", "mm3")
    writeText("WHAT DO YOU THINK?", "mm3")
    writeText(".[wait:5] .[wait:5] .[wait:5]", "mm3")
    writeText("OUR CHOICES DON'T MATTER.", "mm3")
    writeText("THEY MEAN NOTHING IN A LIFE THAT DOESN'T CARE ABOUT WHAT WE WANT.", "mm3")
    writeText(".[wait:3].[wait:3].[wait:3]AN INTERESTING PERSPECTIVE.", "mm3")
    writeText("I WILL NEED TIME TO FORM A RESPONSE YOU MAY FIND SATISFACTORY.", "mm3")
    writeText("\". . . K . . . !\"", "toriel_low")
    writeText("UNFORTUNATELY", "mm3")
    writeText("OUR TIME HERE SEEMS TO HAVE REACHED\n[wait:10]AN END.", "mm3")
    writeText("SOMEONE[wait:10] IS CALLING FOR YOU.", "mm3")
    writeText("\". . . r i s . . . !\"", "toriel_low")
    writeText("BEFORE YOU GO", "mm3")
    writeText("I WOULD LIKE TO REQUEST.[wait:3].[wait:3].[wait:3]", "mm3")
    writeText("THAT WHICH I HAVE TOLD YOU TODAY.[wait:3].[wait:3].[wait:3]", "mm3")
    writeText("DON'T FORGET.", "mm3")
    writeText(".[wait:5] .[wait:5] .[wait:5]", "mm3")
    writeText("THEN", "mm3")
    writeText("I WILL BE SEEING YOU SOON.", "mm3")
    writeText("\". . . K . . .\n. . . R I S . . . !\"", "toriel_low")
    writeText("\"W a k e  u p . . . !\"", "toriel_low")
    writeText("\"P l e a s e ,[wait:5]  w a k e  u p !\"", "toriel_low")

    -- kris gtfo of the bed sequence
    Game:setBorder("leaves")
    cutscene:fadeIn(0)
    Game.world.music:stop()

    local toriel = Game.world:spawnNPC("toriel", 435, 300)
    toriel:setFacing("right")
    cutscene:setSpeaker(toriel)
    cutscene:text("* " .. string.upper(Game:getPartyMember("kris"):getName()) .. "!", "annoyed")
    cutscene:text("* You must get out of bed!\n[wait:5]* We are going to be late for school!", "angry")
    cutscene:wait(cutscene:walkToSpeed(toriel, 330, 300, 6))
    cutscene:wait(cutscene:walkToSpeed(toriel, 330, 220, 6))
    -- TODO toriel animation where she's opening the window
    cutscene:wait(1) -- TEMP
    toriel:setFacing("right")
    cutscene:text("* I will be waiting for you in the car.", "lookright")
    cutscene:text("* Do not take too long,[wait:5] okay?", "smile")
    cutscene:wait(cutscene:walkToSpeed(toriel, 330, 600, 6))
    cutscene:wait(1.5)
    cutscene:walkToSpeed(Game.world.player, 435, 265, 1)
end
