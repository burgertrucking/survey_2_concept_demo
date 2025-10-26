return {
    ---@param cutscene WorldCutscene
    testcall = function(cutscene, event)
        cutscene:text("* Ring,[wait:5] ring...")
        cutscene:text("* Hello.[wait:10] Welcome to Michaelsoft Bimbows tech support.")
        cutscene:text("* My name is Pa-[wait:5] er,[wait:5] Robert.[wait:10]\n* How may I help you today?")
        local sel = cutscene:choicer({"Shut up\nscammer", "I want\na pizza", "Help me fix my complooter"}, {["wait"]=true})

        local susie = cutscene:getCharacter("susie")
        if susie then
            -- your choices don't matter
            cutscene:setSpeaker(susie)
            cutscene:text("* Wait, who are you talking to?", "neutral")
            cutscene:text("* ...Is that a scammer?\n* Why the hell did you call back?!", "nervous_smile")
            cutscene:setSpeaker()
            cutscene:text("* Before you could answer, " .. susie:getPartyMember().name .. " grabbed the phone out of your hand.")
            cutscene:setSpeaker(susie)
            cutscene:text("* Hey, bozo! [wait:10]Get a REAL job instead of trying to rip off my buddy, pal!", "nervous_annoyed")
            cutscene:setSpeaker()
            
        else
            -- STUB
            cutscene:text("testing: selection is " .. sel)
        end

            cutscene:text("* Click...")
    end
}
