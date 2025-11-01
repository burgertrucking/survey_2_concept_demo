local function intro(cutscene)
    cutscene:wait(2)
    Assets.playSound("knockdoor")
    cutscene:wait(1)
    cutscene:setSpeaker("toriel")
end

return {
    sink = function(cutscene)
        cutscene:text("* (The bathroom sink.)")
        cutscene:text("* (Though it drains fine, the cupboard below is empty for easy access in case of emergency.)")
    end,

    shower = function(cutscene)
        cutscene:text("* (It's the shower.)")
        cutscene:text("* (On the shelves are an unscented soap bar, a pint-sized bottle of apple-scented shampoo...)")
        cutscene:text("* (...and a gallon-sized bottle of pet shampoo.)")
    end,

    toilet5x = function(cutscene)
        intro(cutscene)
        cutscene:text("* ..." .. Game:getPartyMember("kris"):getName() .. "?[wait:5] Is everything all right in there?", "lookright")
    end,

    toilet15x = function(cutscene)
        intro(cutscene)
        cutscene:text("* ..." .. Game:getPartyMember("kris"):getName() .. "?[wait:5] Really, are you feeling unwell?", "confused")
        cutscene:text("* I am growing rather concerned...", "confused")
    end,

    toilet25x = function(cutscene)
        intro(cutscene)
        cutscene:text("* ..." .. Game:getPartyMember("kris"):getName() .. "...", "annoyed")
        cutscene:text("* If you are flushing bath bombs down the toilet again...", "annoyed")
        cutscene:text("* You will be paying for the plumbing bill with your allowance.", "annoyed")
    end,
    
    toilet50x = function(cutscene)
        -- TODO add visuals
        cutscene:text("* (And now the toilet won't flush.)")
        cutscene:text("* (It's starting to flood...)")
        cutscene:text("* (Oh no.)")
    end,

    toiletbroken = function(cutscene)
        cutscene:text("* (Look at what you've done.)")
    end,
}
