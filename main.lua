
RockType = {
	strength = 'scissors',
	weakness = 'paper'
}

Attack = {
	amt = 1,
	aType = nil
}

Combatant = {
	hp = 100,
	weakness = RockType,
	heal = function (self, amt)
			self.hp = self.hp + amt
		end,
	receive = function (self, attack)
		print(attack.aType)
		print(self.weakness)
		if attack.aType == self.weakness then
			self.hp = self.hp - attack.amt
		end
	end
}


thellow = Combatant

grossAttack = Attack
grossAttack.aType = RockType
grossAttack.amt = 5

thellow.receive(Combatant, grossAttack)



function love.load()
  Message = string.format("thellow's HP is at %s", thellow.hp)
  local secret = 'This is a local string' -- local variable, apostrophes on the string.
end

function love.draw()
  love.graphics.print(Message, 200, 200)
end