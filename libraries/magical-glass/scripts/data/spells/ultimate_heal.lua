local spell, super = Class("ultimate_heal", true)

function spell:onLightStart(user, target)
    local amount = math.ceil(Game:isLight() and user.chara:getStat("magic") or user.chara:getStat("magic") + 1)
    target:heal(amount, false, true)

    local result = self:onLightCast(user, target)
    Game.battle:battleText(self:getLightCastMessage(user, target).."\n"..self:getHealMessage(user, target, amount))
    if result or result == nil then
        Game.battle:finishActionBy(user)
    end
end

return spell
