-- You can now press Cancel on a choicebox, and the choicer will return 0 when you do
local Choicebox, super = HookSystem.hookScript(Choicebox)

function Choicebox:update()
    local old_choice = self.current_choice
    if Input.pressed("left")  then self.current_choice = 1 end
    if Input.pressed("right") then self.current_choice = 2 end
    if Input.pressed("up")    then self.current_choice = 3 end
    if Input.pressed("down")  then self.current_choice = 4 end

    if self.current_choice > #self.choices then
        self.current_choice = old_choice
    end

    local function cleanup()
        if not self.battle_box then
            self:remove()
            if Game.world:hasCutscene() then
                Game.world.cutscene.choice = self.selected_choice
                Game.world.cutscene:tryResume()
            end
        else
            self:clearChoices()
            self.active = false
            self.visible = false
            Game.battle.battle_ui.encounter_text.active = true
            Game.battle.battle_ui.encounter_text.visible = true
            if Game.battle:hasCutscene() then
                Game.battle.cutscene.choice = self.selected_choice
                Game.battle.cutscene:tryResume()
            end
        end
    end

    if Input.pressed("confirm") then
        if self.current_choice ~= 0 then
            self.selected_choice = self.current_choice
            self.done = true
            cleanup()
        end
    -- Press the B button, stupid!
    elseif Input.pressed("cancel") then
        -- NOTE completely untested in battle
        self.selected_choice = 0
        self.done = true
        cleanup()
    end

    super.super.update(self)
end

return Choicebox
