local AngryDummy, super = Class(EnemyBattler)

function AngryDummy:init()
    super.init(self)

    -- Enemy name
    self.name = "Angry Dummy"
    -- Sets the actor, which handles the enemy's sprites (see scripts/data/actors/dummy.lua)
    self:setActor("angrydummy")

    -- Enemy health
    self.max_health = 667 -- no gaster for you idiot
    self.health = 667
    -- Enemy attack (determines bullet damage)
    self.attack = 10
    -- Enemy defense (usually 0)
    self.defense = 2
    -- Enemy reward
    self.money = 100

    -- Mercy given when sparing this enemy before its spareable (20% for basic enemies)
    self.spare_points = 20

    -- List of possible wave ids, randomly picked each turn
    self.waves = {
        "basicbuthard",
        "aimingbuthard",
        "movingarena"
    }

    -- Dialogue randomly displayed in the enemy's speech bubble
    self.dialogue = {
        "I HATE YOU",
        "YOU ARE AN IDIOT",
        "YOU SHOULD KYS\n(know you suck) NOW",
    }

    -- Check text (automatically has "ENEMY NAME - " at the start)
    self.check = "AT 10 DF 2\n* Icy heart makes you call for mummy\n* Not to be confused with Mad Dummy"

    -- Text randomly displayed at the bottom of the screen each turn
    self.text = {
        "* The dummy stares daggers at you.",
        "* The power of fluffy boys can't\nsave you from this catastrophe.",
        "* Smells like your ass when it gets thrashed.",
    }
    -- Text displayed at the bottom of the screen when the enemy has low health
    self.low_health_text = "* The dummy looks like it's\nabout to fall over.\n* It still looks at you defiantly."

    -- Register act called "Smile"
    self:registerAct("Smile")
    -- Register party act with Ralsei called "Tell Story"
    -- (second argument is description, usually empty)
    self:registerAct("Tell Story", "", {"ralsei"})
    self:registerAct("Hack In 100% Mercy", "dirty hacker", {"suzy", "ralsei"})
end

function AngryDummy:onAct(battler, name)
    if name == "Smile" then
        -- Remove mercy?
        self:addMercy(-10)
        -- Change this enemy's dialogue for 1 turn
        self.dialogue_override = "SHUT UP YOU FOOL"
        -- Act text (since it's a list, multiple textboxes)
        return {
            "* You smile.[wait:5]\n* The dummy flips you off.",
            "* It seems you should stop recycling acts from the tutorial."
        }

    elseif name == "Tell Story" then
        -- Loop through all enemies
        for _, enemy in ipairs(Game.battle.enemies) do
            -- Make the enemy tired
            enemy:setTired(true)
            enemy.dialogue_override = "OH NO MY ONLY WEAKNESS\nCRAPPY STORYTELLING"
        end
        return "* You and Ralsei told the dummy\na bedtime story.\n* The enemies became [color:blue]TIRED[color:reset]..."

    elseif name == "Standard" then --X-Action
        -- Give the enemy 50% mercy
        self:addMercy(50)
        if battler.chara.id == "ralsei" then
            -- R-Action text
            return "* Ralsei bowed politely.\n* The dummy spiritually bowed\nin return."
        elseif battler.chara.id == "susie" then
            -- S-Action: start a cutscene (see scripts/battle/cutscenes/dummy.lua)
            Game.battle:startActCutscene("dummy", "susie_punch")
            return
        else
            -- Text for any other character (like Noelle)
            return "* "..battler.chara:getName().." straightened the\ndummy's hat."
        end

    elseif name == "Hack In 100% Mercy" then
        self:addMercy(100)
        self.dialogue_override = "WTF I DON'T CONSENT TO THIS"
        return "* All of you cheated your way to victory!"

    end

    -- If the act is none of the above, run the base onAct function
    -- (this handles the Check act)
    return super.onAct(self, battler, name)
end

return AngryDummy
