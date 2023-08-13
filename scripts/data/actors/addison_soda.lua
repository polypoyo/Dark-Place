local actor, super = Class(Actor, "addisonsoda")

function actor:init()
    super.init(self)

    self.name = "Soda Addison/Fizz"

    self.width = 59
    self.height = 83

    self.hitbox = {0, 50, 59, 33}

    self.color = {0, 0, 0}

    self.flip = nil

    self.path = "world/npcs/addisons/original"
    self.path_switch = "world/npcs/addisons/velvet_style"
    self.default = "yellow_stall"

    self.voice = nil
    self.voice_switch = "fizz"

    self.portrait_path = nil
    self.portrait_path_switch = "face/fizz"
    self.portrait_offset = {-22, -6}

    self.animations = {}

    self.talk_sprites = {}

    self.offsets = {}

    self.switch = Mod:addiSwitch()
end

function actor:getSpritePath()
    if not self.switch then return self.path
    else return self.path_switch end
end

function actor:getPortraitPath()
    if not self.switch then return self.portrait_path
    else return self.portrait_path_switch end
end

function actor:getVoice()
    if not self.switch then return self.voice
    else return self.voice_switch end
end

function actor:onSpriteUpdate(sprite)
    local switch_bak = self.switch
    self.switch = Mod:addiSwitch()

    if self.switch ~= switch_bak then
        Mod:softResetActorSprite(sprite)
    end
end

return actor