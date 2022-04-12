local numOfOre = 10
local baseOre = game.Workspace.Cave["2nd Area"].Ore["Dark Blue"].Union
local listOfPos = {
	{-154.68, 8.526, 125.615},{-128.374, 4.132, 125.207},{-121.68, -1.033, 172.104},{-174.363, 12.474, 110.229},{-148.803, -1.033, 149.768},{-144.653, 8.834, 121.032}, {-160.29, 13.149, 106.43}, {-171.68, 13.492, 126.086}, {-121.68, -1.033, 172.104}, {-155.431, 8.04, 139.525}, {-133.648, 15.015, 113.482}, {-170.82, 11.55, 152.367}, {-141.396, -2.072, 136.549}, {-122.64, -12.532, 145.635}, {-141.263, -4.807, 162.968}
}
local OreNumber = 1

--Spawns a new ore when called
function spawnOre()
	local randomNum = math.random(1,15)
	local randomPosition = listOfPos[randomNum]
	table.remove(listOfPos, randomNum)
	local x = randomPosition[1]
	local y = randomPosition[2]
	local z = randomPosition[3]
		local newOre = baseOre:Clone() --Clones the ore found in baseOre
	newOre.CFrame = CFrame.new(x, y, z) --Sets where it will be in the game based off of the randomPosition array
	newOre.Parent = script.Parent.Ore --Sets where the model will be in the game explorer
	newOre.Name = OreNumber
	newOre.OreNumber = OreNumber
			warn("Current random coordinates are " .. x, y, z)
			print("Successfully created new Ore (game.Workspace.Cave.Script)") --check to see if it works (it does but idk how to move it)
	OreNumber += 1
end

--Repeats function for how many you set numOfOre to
for i = 1, numOfOre do
	spawnOre()
	wait(0.1)
end
