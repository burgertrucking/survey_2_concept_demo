return {
    ---@param cutscene WorldCutscene
    starwalkerconvo = function(cutscene, event)
        cutscene:text("* This [color:yellow]fake light world[color:reset]\nis [color:yellow]Pissing[color:reset] me off...")
        cutscene:text("* I'm the original   [color:yellow]Starwalker[color:reset]")

        local susie = cutscene:getCharacter("susie")
        if susie then
            cutscene:setSpeaker(susie)
            cutscene:text("* Uh,[wait:5] what are you even doing here?", "annoyed")
            cutscene:text("* Shouldn't you be in...[wait:10] y'know,[wait:10] the Dark World?", "annoyed")

            cutscene:setSpeaker() -- starwalker
            cutscene:text("* Stop asking    questions")
            cutscene:text("* It's [color:yellow]Pissing[color:reset] me off...")
        end
    end
}
