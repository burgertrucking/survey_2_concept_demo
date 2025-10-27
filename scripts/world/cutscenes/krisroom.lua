return {
    asrielbed = function(cutscene)
        cutscene:text("* (It's your brother's bed.)\n* (Exactly as it was yesterday, and the day before that.)")
    end, 

    asrieldesk = function(cutscene)
        cutscene:text("bros invinsible desk")
    end,

    asrieldresser = function(cutscene)
        cutscene:text("* (It's your brother's dresser.)\n* (Take a peek inside?)")
        local sel = cutscene:choicer({"Yes", "No"}, {["wait"] = true})
        if sel == 1 then
            local fun = Game:getFlag("fun", 0)
            cutscene:text("* (Inside is some loose change, a bunch of old receipts...)")
            if 0 < fun and fun <= 10 then
                cutscene:text("* (...some white, leathery sphere thing... oh, that's a baseball...)")
            elseif 10 < fun and fun <= 20 then
                cutscene:text("* (...the manual for Dragon Blazers...)")
            elseif 20 < fun and fun <= 30 then
                cutscene:text("* (...a small collection of ska CDs...)")
            elseif 30 < fun and fun <= 40 then
                cutscene:text("* (...a cross country shirt with a tear in it...)")
            else
                cutscene:text("* (...a can of bepis...)")
            end
            cutscene:text("* (...and a bunch of identical striped sweaters you're all too familiar with.)")
        else
            cutscene:text("* (You shouldn't sift through others' belongings.)")
        end
    end,

    krisbed = function(cutscene)
        cutscene:text("* (You so badly want to slip back in...)")
        cutscene:text("* (But you get the feeling you'll miss 80% of the demo's content if you do.)")
    end,

    krisdresser = function(cutscene)
        cutscene:text("* (Your clothes dresser.)")
        cutscene:text("* (It's full of those green hand-me-downs you never liked.)")
    end,

    redwagon = function(cutscene)
        cutscene:text("* (It's seen its fair share of crashes.)")
    end,

    window = function(cutscene)
        cutscene:text("* (The morning sun shines vividly.)")
        cutscene:text("* (Its light radiates throughout your room.)")
    end,
}
