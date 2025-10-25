-- NOTE: Music doesn't play when selected from debug menu, play using Mod:playLegend()
---@param cutscene LegendCutscene
return function(cutscene)
    -- timing constants
    local BPM = 141
    local BPS = BPM/60
    local BEAT = 1/BPS
    local MEASURE = BEAT*3
    local BAR = MEASURE*4

    local panel
    cutscene:setSpeed(1/2)

    function p1()
        -- 4 bars
        panel = cutscene:slide("cutscenes/legend/panel1")
        panel:setScale(2, 2)
        -- TODO fix positioning, pan the panel down
        panel.x = 200/2+20
        panel.y = -360-40
        cutscene:text("A legend, [wait:10]old as the\nearth we abide,", "middle_bottom")
        cutscene:wait(BAR)
        cutscene:removeText()
        cutscene:text("A tale, [wait:10]told under the\nstars that guide.", "middle_bottom")
        cutscene:wait(BAR)
        cutscene:removeText()
        cutscene:text("A legend\nof dark,", "left_bottom")
        cutscene:text("A tale\nof dreams,", "text_prince")
        cutscene:wait(BAR/2)
        cutscene:removeText()
        cutscene:text("A legend\nof light.", "left_bottom")
        cutscene:text("A tale\nof hope.", "text_prince")
        cutscene:wait(BAR/2)
        cutscene:removeText()
        cutscene:text("The legend of Delta Rune\n[wait:10]tells our plight.", "middle_bottom")
        cutscene:wait(BAR)
        cutscene:removeText()
        cutscene:removeSlides()
    end

    function p2()
        -- 2 bars
        panel = cutscene:slide("cutscenes/legend/panel2")
        panel:setScale(2, 2)
        panel.x = 200/2+20
        panel.y = 110/2
        cutscene:text("The parallel worlds\n[wait:20]of light and dark", "middle_bottom")
        cutscene:wait(BAR)
        cutscene:removeText()
        cutscene:text("In harmony,[wait:20]\nso beat their hearts.", "middle_bottom")
        cutscene:wait(BAR)
        cutscene:removeText()
    end

    function p3()
        -- 2 bars
        panel = cutscene:slide("cutscenes/legend/panel3")
        panel:setScale(2, 2)
        panel.x = 200/2+20
        panel.y = 110/2
        cutscene:text("But should this balance\n[wait:20]see interrupt,", "middle_bottom")
        cutscene:wait(BAR)
        cutscene:removeText()
        cutscene:text("Both domains alike\n[wait:20]will render corrupt.", "middle_bottom")
        cutscene:wait(BAR)
        cutscene:removeText()
        cutscene:removeSlides()
    end

    function p4()
        -- 4 bars
        panel = cutscene:slide("cutscenes/legend/panel4")
        panel:setScale(2, 2)
        -- TODO positioning
        cutscene:text("Chaos, [wait:10]and ruin,\n[wait:10]and roaring thunder", "middle_bottom")
        cutscene:wait(BAR)
        cutscene:removeText()
        cutscene:text("Crust of the earth\n[wait:20]now torn asunder.", "middle_bottom")
        cutscene:wait(BAR)
        cutscene:removeText()
        cutscene:text("Thunder and lightning\n[wait:20]strike from the sky,", "middle_bottom")
        cutscene:wait(BAR)
        cutscene:removeText()
        cutscene:text("As the land bellows\n[wait:20]her final cry.", "middle_bottom")
        cutscene:wait(BAR)
        cutscene:removeText()
        cutscene:removeSlides()
    end

    function p5()
        -- 1 bar
        panel = cutscene:slide("cutscenes/legend/panel5")
        panel:setScale(2, 2)
        -- TODO positioning
        cutscene:text("As nightmares haunt grimly,", "middle_bottom")
        cutscene:wait(BAR/2)
        cutscene:removeText()
        cutscene:text("And hope all but purged,", "middle_bottom")
        cutscene:wait(BAR/2)
        cutscene:removeText()
    end

    function p6()
        -- 1 bar
        panel = cutscene:slide("cutscenes/legend/panel6")
        panel:setScale(2, 2)
        -- TODO positioning
        cutscene:text("Our guiding stars,", "middle_bottom")
        cutscene:wait(BAR/2)
        cutscene:removeText()
        cutscene:text("The saviors, emerge.", "middle_bottom")
        cutscene:wait(BAR/2)
        cutscene:removeText()
        cutscene:removeSlides()
    end

    function p7()
        -- 2 bars
        -- TODO show each hero as the respective line comes up
        -- also figure out how to not have them cropped lmao
        panel = cutscene:slide("cutscenes/legend/panel7_full") -- TEMP
        panel:setScale(2, 2)
        cutscene:text("A human,", "text_human")
        cutscene:wait(MEASURE)
        cutscene:text("A monster,", "text_monster")
        cutscene:wait(MEASURE)
        cutscene:setSpeed(3/5)
        cutscene:text("A prince from\n the darkness.", "text_prince")
        cutscene:wait(MEASURE*2)
        cutscene:removeText()
        cutscene:setSpeed(1/2)
        cutscene:text("Three heroes of legend\n[wait:20]appear at world's edge.", "middle_bottom")
        cutscene:wait(BAR)
        cutscene:removeText()
        cutscene:removeSlides()
    end

    function p8()
        -- 4 bars
        panel = cutscene:slide("cutscenes/legend/panel8")
        panel:setScale(2, 2)
        cutscene:text("Geysers of black\n[wait:30]erupt from the earth,", "middle_bottom")
        cutscene:wait(BAR)
        cutscene:removeText()
        cutscene:text("Souls of the heroes\n[wait:30]shine power from within.", "middle_bottom")
        cutscene:wait(BAR)
        cutscene:removeText()
        cutscene:text("Freeing the world\n[wait:30]by sealing the fountains,", "middle_bottom")
        cutscene:wait(BAR)
        cutscene:removeText()
        cutscene:text("And banishing the\nAngel's false heaven.", "middle_bottom")
        cutscene:wait(BAR)
        cutscene:removeText()
        cutscene:removeSlides()
    end

    function p9()
        -- 4 bars
        -- TODO pan downward, pan to left
        panel = cutscene:slide("cutscenes/legend/panel9")
        panel:setScale(2, 2)
        panel.x = 200/2+20
        panel.y = -180
        cutscene:text("This kingdom's Grand Fountain,\n[wait:20]piercing the sky,", "middle_bottom")
        cutscene:wait(BAR)
        cutscene:removeText()
        cutscene:text("Preserving the balance\n[wait:20]that keeps the worlds whole.", "middle_bottom")
        cutscene:wait(BAR)
        cutscene:removeText()
        cutscene:text("But off in the distance,\n[wait:20]another one rises,", "middle_bottom")
        cutscene:wait(BAR)
        cutscene:removeText()
        cutscene:text("And the balance\ngrows ever annulled...", "middle_bottom")
        cutscene:wait(BAR)
        cutscene:removeText()
        cutscene:removeSlides()
    end

    -- NOTE can't seek music
    p1()
    p2()
    p3()
    p4()
    p5()
    p6()
    p7()
    p8()
    p9()
    cutscene:wait(1)

end
