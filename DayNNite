local Time = 1
local TimeChange = 0.01
local DayCycle = workspace["Day N Nite Cycle"].Day.Value
local ClockTime = game.Lighting.ClockTime

while wait(Time) do
	game.Lighting.ClockTime += TimeChange
	if ClockTime == 0 then
		DayCycle += 1
	end
end
