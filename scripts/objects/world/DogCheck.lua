local DogCheck, super = Class(Rectangle) -- lmao

function DogCheck:init()
    super.init(self, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)
	self.color = COLORS.black
    self.parallax_x = 0
    self.parallax_y = 0
	self.layer = WORLD_LAYERS["top"]
    self.debug_select = false

    ---@type ""|"IDLE"|"EXITING"
    self.state = ""

    self.dog = nil
    self.song = nil
    self.song_pitch = 1

    self.timer = Timer()
    self:addChild(self.timer)
    -- Undertale does this
    self.start_wait_handle = self.timer:after(5/30, function() self:start() end)

    self.summer_siner = 0
    self.stretch_ex_start = 0
    self.stretch_ex_timer = 0
end

function DogCheck:start()
    if self.state ~= "" then return end
    self.state = "IDLE"

    local function createDog(sprite, anim_speed, x_off, y_off, scale)
        x_off = x_off or 0
        y_off = y_off or 0
        scale = scale or 4

        self.dog = Sprite(sprite, self.width / 2 + x_off, self.height / 2 + y_off)
        self.dog:setOrigin(0.5, 0.5)
        self.dog:setScale(scale)
        self.dog:play(anim_speed, true)
        self:addChild(self.dog)
    end

    local function playSong(path, pitch_rand_min, pitch_rand_max)
        pitch_rand_min = pitch_rand_min or 1
        pitch_rand_max = pitch_rand_max or pitch_rand_min

        self.song = path
        self.song_pitch = Utils.random(pitch_rand_min, pitch_rand_max)
        Game.world.music:play(path, nil, self.song_pitch)
    end

	local month = os.date("*t").month
    local variant_choices = {"dance", "sleep", "maracas", "piano", "banned", "banned2", "chapter2"}
    if month >= 3 and month <= 5 then
        table.insert(variant_choices, "spring")
    elseif month >= 6 and month <= 8 then
        table.insert(variant_choices, "summer")
    elseif month >= 9 and month <= 11 then
        table.insert(variant_choices, "autumn")
    elseif month >= 12 and month < 3 then
        table.insert(variant_choices, "winter")
    end
    self.variant = Utils.pick(variant_choices)

    local cust_sprites_base = "world/cutscenes/dogcheck"

    if self.variant == "dance" then
        createDog(cust_sprites_base.."/dog_dance", 0.2)
        playSong("dance_of_dog", 0.95, 1.05)
    elseif self.variant == "sleep" then
        createDog("misc/dog_sleep", 0.8)
        local song_here = Utils.pick({"deltarune/dogcheck", "results", "sigh_of_dog", "dogcheck_anniversary"})
        local song_is_sog = song_here == "sigh_of_dog"
        playSong(song_here, song_is_sog and 0.8 or 1, 1)
    elseif self.variant == "maracas" then
        createDog(cust_sprites_base.."/dog_maracas", 0.1, 20, -20)
        playSong("baci_perugina2")
    elseif self.variant == "piano" then
        createDog(cust_sprites_base.."/dog_piano", 0.5)
        local song_here = Utils.pick({"legend_piano", "snowdin_piano", "home_piano", "5_4_improv", "bowser_piano_victory"})
        playSong(song_here)
    elseif self.variant == "spring" then
        createDog(cust_sprites_base.."/dog_spring", 0.2, -2, -13)
        playSong("options_fall")
    elseif self.variant == "summer" then
        createDog(cust_sprites_base.."/dog_summer", 0.8, 0, 24)
        self.dog:setOrigin(0.5, 1)
        playSong("options_summer")
    elseif self.variant == "autumn" then
        createDog(cust_sprites_base.."/dog_autumn", 0.8, -2, -10)
        playSong("options_fall")
    elseif self.variant == "winter" then
        createDog(cust_sprites_base.."/dog_winter", 0.8, -2, -14)
        playSong("options_winter")
    elseif self.variant == "banned" then
        createDog(cust_sprites_base.."/banned", 1, 0, 0, 2)
        playSong("AUDIO_DEFEAT", 1.5)
    elseif self.variant == "banned2" then
        createDog(cust_sprites_base.."/banned_b", 1, 0, 0, 1)
        Game._tempdogcheckresolution = true
        love.window.setMode(1280, 960)
        Game.world.timer:after(1.25, function()
            Game.world.music:play("mutation", 0)
            Game.world.music:fade(0.85, 1.5)
        end)
    elseif self.variant == "chapter2" then
        createDog("misc/dog_sleep", 0.8, -960, -580)
        playSong("alarm_titlescreen", 1, 1)
        self:dogcheck2()
        Game.world.timer:every(17.5, function()
            self:dogcheck2()
        end)
    end
end

function DogCheck:update()
    super.update(self)

    -- Make sure we *do* have the menu turned off (zero WIP)
    Game.lock_movement = true

    if self.state == "" then return end

    if self.state == "IDLE" and not Game.world:hasCutscene() --[[for zero WIP]] and not OVERLAY_OPEN
        and Input.pressed("confirm")
    then
        self.state = "EXITING"
        Game.fader:fadeOut(nil, { speed = 0.5 })
        Game.world.music:fade(0, 20/30)
        Game.world.timer:after(1, function ()
            Game:returnToMenu()
        end)
    end

    -- Do this every other frame
    if self.variant == "summer" then
        self.stretch_ex_start = self.stretch_ex_start + DTMULT
        if self.stretch_ex_start >= 240 then
            self.stretch_ex_timer = self.stretch_ex_timer + DTMULT
            if self.stretch_ex_timer >= 1100 and math.abs(math.sin(self.summer_siner / 15)) < 0.1 then
                self.stretch_ex_timer = 0
                self.stretch_ex_start = 0
            end
        end
        self.summer_siner = self.summer_siner + DTMULT
        local extra_stretch = math.sin(self.summer_siner / 15) * (0.2 + (self.stretch_ex_timer / 900))
        self.dog:setScale(4 + 1 + extra_stretch, 4 + 1 - extra_stretch)
    end
end

function DogCheck:getDebugInfo()
    if self.state == "" then
        return { string.format("Starting in: %gs", self.start_wait_handle.limit - self.start_wait_handle.time) }
    end

    return {
        "State: " .. self.state,
        "Variant: " .. self.variant,
        string.format("Song: %s (%gx)", self.song, self.song_pitch)
    }
end

function DogCheck:draw()
    super.draw(self)
    -- Ported the sun out of boredom, uncomment this if you want. - Agent 7
    --[[
    if self.variant == "summer" then
        Draw.setColor(1, 1, 0)
        love.graphics.circle("fill", 420 + math.cos(self.summer_siner / 18) * 6, 40 + math.sin(self.summer_siner / 18) * 6, 28 + math.sin(self.summer_siner / 6) * 4, 100)
    end
    --]]
end

function DogCheck:dogcheck2()
    local dog1 = Sprite("world/npcs/spr_dogcar", 0 - 40, 280)
    dog1.flip_x = true
    dog1:setOrigin(0.5, 0.5)
    dog1:setScale(2)
    dog1:play(0.25, true)
    self:addChild(dog1)
    dog1.physics.speed = 10
    Game.world.timer:script(function(wait)
        wait(2.75)
        dog1:remove()
        local dog2 = Sprite("world/npcs/spr_dogcar", SCREEN_WIDTH, 280)
        dog2:setOrigin(0.5, 0.5)
        dog2:setScale(2)
        dog2:play(0.25, true)
        self:addChild(dog2)
        dog2.physics.speed = -10
        wait(3)
        dog2:remove()
        local dog1 = Sprite("world/npcs/spr_dogcar", 0 - 40, 280)
        dog1.flip_x = true
        dog1:setOrigin(0.5, 0.5)
        dog1:setScale(2)
        dog1:play(0.25, true)
        self:addChild(dog1)
        dog1.physics.speed = 10
        wait(2.75)
        dog1:remove()
        local dog2 = Sprite("world/npcs/spr_dogcar", SCREEN_WIDTH, 280)
        dog2:setOrigin(0.5, 0.5)
        dog2:setScale(2)
        dog2:play(0.25, true)
        self:addChild(dog2)
        dog2.physics.speed = -10
        wait(3)
        local dognum = love.math.random(4, 8)
        local i = 0
        while (i < dognum) do
            local newdog = Sprite("world/npcs/spr_dogcar", 0 - 40, 280 + love.math.random(-80, 80))
            newdog.flip_x = true
            newdog.physics.speed = love.math.random(10, 16)
            newdog:setOrigin(0.5, 0.5)
            if i == (dognum - 1) then
                newdog:setScale(2)
            end
            newdog.physics.friction = love.math.random(0.01, -0.01)
            newdog:play(((newdog.physics.speed / 4) * 0.25) + 0.25, true)
            self:addChild(newdog)
            i = i + 1
        end
        wait(2.4)
        local dognum2 = love.math.random(5, 12)
        local i2 = 0
        while (i2 < dognum2) do
            local newdog = Sprite("world/npcs/spr_dogcar", SCREEN_WIDTH, 280 + love.math.random(-80, 80))
            newdog.physics.speed = love.math.random(-10, -16)
            newdog:setOrigin(0.5, 0.5)
            if i2 == (dognum2 - 1) then
                newdog:setScale(2)
            end
            newdog.physics.friction = love.math.random(0.01, -0.01)
            newdog:play(((newdog.physics.speed / 4) * 0.25) + 0.25, true)
            self:addChild(newdog)
            i2 = i2 + 1
        end
    end)
end

return DogCheck