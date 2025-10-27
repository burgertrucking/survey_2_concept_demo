return {
    ---@param cutscene WorldCutscene
    starwalkerconvo = function(cutscene)
        cutscene:text("* This [color:yellow]fake light world[color:reset]\nis [color:yellow]Pissing[color:reset] me off...")
        cutscene:text("* I'm the original   [color:yellow]Starwalker[color:reset]")

        local susie = cutscene:getCharacter("susie")
        local ralsei = cutscene:getCharacter("ralsei")
        if susie then
            cutscene:setSpeaker(susie)
            cutscene:text("* Uh,[wait:5] what are you even doing here?", "annoyed")
            cutscene:text("* Shouldn't you be in...[wait:10] y'know,[wait:10] the Dark World?", "annoyed")

            cutscene:setSpeaker() -- starwalker
            cutscene:text("* Stop asking    questions")
            cutscene:text("* It's [color:yellow]Pissing[color:reset] me off...")

            if ralsei then
                cutscene:setSpeaker(susie)
                cutscene:text("* Come to think of it...\n* " .. ralsei:getPartyMember().name .. ", why are you here, too?", "neutral")

                cutscene:setSpeaker(ralsei)
                cutscene:text("* Um...", "what")
                cutscene:text("* Frankly, I'm not quite sure, myself.", "surprise")
                cutscene:text("* Though, I suspect there may be some [wait:10]shenanigans[wait:10] going on...", "annoyed")
            end
        end
    end
}
