-- NOTE: Music doesn't play when selected from debug menu, play using Mod:playLegend()
---@param cutscene LegendCutscene
return function(cutscene)
    cutscene:text("Music test", "middle_bottom")
    cutscene:musicWait(5)
end
