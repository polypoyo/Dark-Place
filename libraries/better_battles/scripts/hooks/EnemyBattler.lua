---@class EnemyBattler : EnemyBattler
---@overload fun(...) : EnemyBattler
local EnemyBattler, super = Class("EnemyBattler", true)

function EnemyBattler:init(actor, use_overlay)
    super:init(self, actor, use_overlay)
	
	self.tiredness = 0
	self.tired_text = nil
end

function EnemyBattler:addTired(amount)
    if self.tiredness >= 100 then
        -- We're already at full tiredness; do nothing.
        return
    end

    self.tiredness = self.tiredness + amount
    if self.tiredness < 0 then
        self.tiredness = 0
    end

    if self.tiredness >= 100 then
        self.tiredness = 100
		self:setTired(true)
	else
		self:setTired(false)
    end

    if Game:getConfig("mercyMessages") then
        if amount > 0 then
            local pitch = 0.8
            if amount < 99 then pitch = 1 end
            if amount <= 50 then pitch = 1.2 end
            if amount <= 25 then pitch = 1.4 end

            local src = Assets.playSound("mercyadd", 0.8)
            src:setPitch(pitch)
        end
		self:statusMessage("tired", amount)
    end
end

function EnemyBattler:getEncounterText()
    if self.low_health_text and self.health <= (self.max_health * self.tired_percentage) then
        return self.low_health_text
    end
    if self.spareable_text and self:canSpare() then
        return self.spareable_text
    end
    if self.tired_text and self.tired then
        return self.tired_text
    end
    return Utils.pick(self.text)
end

function EnemyBattler:canSleep()
    return self.tiredness >= 100
end

function EnemyBattler:setTired(bool)
    self.tired = bool
    if self.tired then
		self.tiredness = 100
        self.comment = "(Tired)"
    else
        self.comment = ""
    end
end

return EnemyBattler