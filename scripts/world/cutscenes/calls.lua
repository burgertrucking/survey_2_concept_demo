local function intro(cutscene)
    cutscene:playSound("phone", 1)
    cutscene:text("* (Ring,[wait:5] ring...)")
end

local function outro(cutscene)
    cutscene:text("* (Click...)")
end

return {
    ---@param cutscene WorldCutscene
    test1 = function(cutscene)
        intro(cutscene)
        cutscene:text("* Hello.[wait:10] Thank you for calling Michaelsoft Bimbows tech support.")
        cutscene:text("* My name is... er...[wait:5] Robert.[wait:10]\n* Yes, this is the Robert.\n* How may I help you today?")
        local sel = cutscene:choicer({"Shut up\nscammer", "I want\na pizza", "Help me fix my complooter"}, {["wait"]=true})

        local susie = cutscene:getCharacter("susie")
        if susie then
            -- your choices don't matter
            cutscene:setSpeaker(susie)
            cutscene:text("* Wait, who are you talking to?", "neutral")
            cutscene:text("* ...Is that a scammer?\n* Why the hell did you call back?!", "nervous_smile")
            cutscene:setSpeaker()
            cutscene:text("* (Before you could react, " .. susie:getPartyMember().name .. " yanked the phone from your hand.)")
            cutscene:setSpeaker(susie)
            cutscene:text("* Hey, bozo! [wait:10]Get a REAL job instead of trying to rip off my buddy, pal!", "nervous_annoyed")
            cutscene:setSpeaker()
        else
            if sel == 1 then
                cutscene:text("* Scammer? No, no, you've got this all wrong!")
                cutscene:text("* I'm just Toby from Michaelsoft Bimbows tech support!\n* Wait, no, I mean Robert!")
                cutscene:text("* I can help you fix your compooter!")
            elseif sel == 2 then
                cutscene:text("* Yes, I can help you with that.")
                cutscene:text("* I need you to open up the Ice-E's P\'E\'zza webpage...")
                cutscene:text("* Now click on, \"complete your order\"...")
                cutscene:text("* Do you see some numbers in a box labeled \"credit card\"?\n* Can you read them aloud for me?")
            elseif sel == 3 then
                cutscene:text("* Yes, I can help you with that.")
                cutscene:text("* I need you to go on to the Google. Are you on the Google?")
                cutscene:text("* Now, type in \"rensenware\", click on the first link, and click download...")
            else -- default case 0
                cutscene:text("* ...Hello? Are you still there?")
                cutscene:text("* ...Hello?")
                cutscene:text("* ...Hello?")
                cutscene:text("* ...Hello?")
                cutscene:text("* ...How low?")
            end
            cutscene:text("* (You got bored of messing with the scammer and decided to hang up.)")
        end
        outro(cutscene)
    end,

    ---@param cutscene WorldCutscene
    test2 = function(cutscene)
        intro(cutscene)
        cutscene:text("* These spam calls are   [color:yellow]Pissing[color:reset] me off...")
        outro(cutscene)
    end
}
