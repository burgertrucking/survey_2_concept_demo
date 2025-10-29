return {
    ---@param cutscene WorldCutscene
    asrielbed = function(cutscene)
        cutscene:text("* (It's your brother's bed.)\n* (Exactly as it was yesterday, and the day before that.)")
    end, 

    ---@param cutscene WorldCutscene
    ---@param event Event
    asrieldesk = function(cutscene, event)
        if not event:getFlag("used_once") then
            cutscene:text("* (You left the computer on overnight.)")
            local unfun = Game:getFlag("unfun", 0)
            if 0 < unfun and unfun <= 20 then
                cutscene:text("* (On screen is a crude sketch of an eerie, surrealistic landscape.)")
                cutscene:text("* (It doesn't quite capture the image you can't get out of your mind.)")
            elseif 20 < unfun and unfun <= 40 then
                cutscene:text("* (On screen is a character from a game your brother never finished.)")
                cutscene:text("* (Overdesigned and gaudy, he exhibits your brother's flair for the dramatic.)")
            else
                cutscene:text("* (It's best if you don't acknowledge what's on the screen.)")
            end
        else
            cutscene:text("* (There's not much to do on the computer while the whole town's internet is out.)")
        end
    end,

    ---@param cutscene WorldCutscene
    asrieldresser = function(cutscene)
        cutscene:text("* (It's your brother's dresser.)\n* (Take a peek inside?)")
        local sel = cutscene:choicer({"Yes", "No"}, {["wait"] = true})
        if sel == 1 then
            local fun = Game:getFlag("fun", 0)
            cutscene:text("* (Inside is some loose change, a jumble of old receipts...)")
            if 0 < fun and fun <= 10 then
                cutscene:text("* (...the instruction manual for the hit 1997 role-playing game Dragon Blazers...)")
            elseif 10 < fun and fun <= 20 then
                cutscene:text("* (...a small collection of ska CDs, with a single punk rock album among them...)")
            elseif 20 < fun and fun <= 30 then
                cutscene:text("* (...some kind of white, leathery sphere thing... oh, that's a baseball...)")
            elseif 30 < fun and fun <= 40 then
                cutscene:text("* (...a few unopened, plain-looking envelopes from state universities...)")
            else
                cutscene:text("* (...an unopened can of Bepis...)")
            end
            cutscene:text("* (...and a bunch of identical sweaters you're all too familiar with.)")
        else
            cutscene:text("* (You shouldn't sift through others' belongings.)")
        end
    end,

    ---@param cutscene WorldCutscene
    krisbed = function(cutscene)
        cutscene:text("* (You so badly want to slip back in...)")
        cutscene:text("* (But you get the feeling you'll miss 80% of the demo's content if you do.)")
    end,

    ---@param cutscene WorldCutscene
    krisdresser = function(cutscene)
        cutscene:text("* (It's your clothes dresser.)")
        cutscene:text("* (It's full of green, striped hand-me-downs.)")
    end,

    ---@param cutscene WorldCutscene
    redwagon = function(cutscene)
        cutscene:text("* (It's a wagon with a bird cage in it.)")
        cutscene:text("* (It's almost as if it looks more damaged every time you see it.)")
    end,

    stain = function(cutscene)
        cutscene:text("* (The stain never goes away, no matter how hard you try to clean it.)")
    end,

    ---@param cutscene WorldCutscene
    window = function(cutscene)
        cutscene:text("* (The morning sun shines vividly.)")
        cutscene:text("* (Rays of its light permeate into every corner of your room.)")
    end,
}
