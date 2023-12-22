

function PLUGIN:EmitRandomChatter(player)
	local randomSounds = {
		"putyoursonghere.mp3",
		"putyoursonghere.mp3",
		"putyoursonghere.mp3"
	}
	

	
	local randomSound = randomSounds[ math.random(1, #randomSounds) ];
		if(randomSound == "putyoursonghere.mp3") then
			ix.chat.Send(player, "dispatchs", "Put your Overwatch Sentence here.", true)
		end
        if(randomSound == "putyoursonghere.mp3") then
			ix.chat.Send(player, "dispatchs", "Put your Overwatch Sentence here.",true)
		end
		if(randomSound == "putyoursonghere.mp3") then
			ix.chat.Send(player, "dispatchs", "Put your Overwatch Sentence here.",true)
		end
		
	player:EmitSound( randomSound, 60)
end

-- Color(150, 100, 100)

function PLUGIN:Tick()
	for k, v in ipairs( player.GetAll() ) do
		
			local curTime = CurTime()
			
			if (!self.nextChatterEmit) then 
				self.nextChatterEmit = curTime + math.random(580, 600)
			end
			
			if ( (curTime >= self.nextChatterEmit) ) then
				self.nextChatterEmit = nil
				
				self:EmitRandomChatter(v)
			end

	end
end