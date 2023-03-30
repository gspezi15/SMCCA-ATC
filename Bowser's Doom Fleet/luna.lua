local autoscroll = require("autoscroll")

function onLoadSection0()
	autoscroll.scrollRight(1.5)
end

function onTick()
    if player.deathTimer > 0 then return end 
    if player:mem(0x148, FIELD_WORD) > 0
    and player:mem(0x14C, FIELD_WORD) > 0
    and player:mem(0x164, FIELD_WORD) ~= -1	then
        player:kill()
    end
end

function onEvent(eventName)
 if eventName == "airship" then
        Audio.MusicFadeOut(0, 5000)
		Audio.MusicChange(0, "Music/Airship.ogg")
	end
end 

		