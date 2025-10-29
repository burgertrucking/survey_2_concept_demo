return {
    bookshelf = function(cutscene)
        cutscene:text("* (The shelf is stocked with various publications, such as...)")
        cutscene:text("* (...\"Lord of the Hammer\", autographed by Gerson Boom...)")
        cutscene:text("* (...\"More How to Draw Dragons, Vol 1: The Basics of Reptile Drawing\", by Junichi Office...)")
        cutscene:text("* (...\"Do Snails Have Tails?\", a scientific paper...)")
        cutscene:text("* (...\"Snails Do Not, In Fact, Have Tails\", a scientific refutation...)")
        cutscene:text("* (...\"720 Uses for Snails\", a compilation of all ten editions of \"72 Uses for Snails\"...)")
        cutscene:text("* (...among many others.)")
    end,

    cactus = function(cutscene)
        cutscene:text("* (A cactus.)\n* (It's the only plant you've managed to keep around.)")
    end,

    cabinet = function(cutscene)
        cutscene:text("* (You open up the cabinet and take a peek inside. You see...)")
        local unfun = Game:getFlag("unfun", 0)
        if 0 < unfun and unfun <= 10 then
            cutscene:text("* (...a strange-looking handmade craft of an angel, with your and your brother's name on it.)")
        elseif 10 < unfun and unfun <= 20 then
            cutscene:text("* (...a complete VHS set of your dad's favorite western series.)\n* (It has sat long untouched.)")
        elseif 20 < unfun and unfun <= 30 then
            cutscene:text("* (...a heavily used box of crayons. The green one is absent.)")
        elseif 30 < unfun and unfun <= 40 then
            cutscene:text("* (...an old family album, full of photos of you, your mom, and your brother.)")
        else
            cutscene:text("* (...a six-pack of Bepis bottles.)")
        end
    end,

    mirror = function(cutscene)
        cutscene:text("* (It's just you.)")
    end,

    toridoor = function(cutscene)
        cutscene:text("* (It's locked.)")
    end,
}
