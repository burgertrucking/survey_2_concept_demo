return {
    carnote = function(cutscene, event)
        if not event:getFlag("used_once") then
            cutscene:text("* Though barely noticeable, the car's tires sink to the ground. A deep gash is carved into each.")
            cutscene:text("* Attached to the windshield is a note, reading:")
        end
        cutscene:text("\"This is all of the demo I could finish in time for Halloween. Sorry for the lack of content.")
        cutscene:text("I aim complete the prologue over the next month, and I'll upload a build or two per week.")
        cutscene:text("Hopefully it won't take too long...")
        cutscene:text("Until then, feel free to poke around with the debug menu or peruse the source code.")
        cutscene:text("You just might find something interesting...\"")
    end,

    dirtyhacker = function(cutscene)
        local toriel = cutscene:getCharacter("toriel")
        cutscene:setSpeaker(toriel)
        cutscene:look(toriel, "down")
        cutscene:text("* Oh![wait:5] " .. Game:getPartyMember("kris"):getName() .. "!", "smile")
        cutscene:text("* Are you going to noclip your way to school?\n* What a wonderful idea!", "grin")
        cutscene:text("* Though, it seems the rest of town vanished from existence...", "lookright")
        cutscene:text("* Perhaps that tire slasher might be on to something...", "lookright")
        cutscene:look(toriel, "right")
    end,

    torcarbroke = function(cutscene, character)
        local toriel = cutscene:getCharacter("toriel")
        cutscene:setSpeaker(toriel)
        if not character:getFlag("used_once") then
            cutscene:text("* Hm...", "sad")
            toriel:facePlayer()
            cutscene:text("* ...Ah![wait:5] " .. Game:getPartyMember("kris"):getName() .. "!", "smile")
            cutscene:text("* As I pulled out of the driveway,[wait:5] all the tires suddenly went flat...", "lookright")
            cutscene:text("* Upon closer inspection,[wait:5] I discovered...", "lookright")
            cutscene:text("* Well,[wait:5] I do not wish to alarm you,[wait:5] but...", "sad")
            cutscene:text("* It seems some vandal has [color:red]slashed[color:reset] the car's tires.", "sad")
            cutscene:text("* This hooligan apparently also left some sort of ransom note...", "sad")
            cutscene:text("* But,[wait:5] it hardly makes any sense.", "annoyed")
            cutscene:text("* It went on about some kind of game demo,[wait:5] and about taking too long...", "annoyed")
            cutscene:text("* Please do not be too concerned.", "smile")
            cutscene:text("* I would merely dismiss this event as the doings of a lunatic.", "smile")
            cutscene:look(toriel, "right")
            character:setFlag("used_once", true)
        else
            toriel:facePlayer()
            cutscene:text("* I do not think we will be able to get to school like this.", "lookright")
            cutscene:text("* Until this no longer poses a problem,[wait:10] we just have to wait.", "grin")
            cutscene:look(toriel, "right")
        end
    end,
}
