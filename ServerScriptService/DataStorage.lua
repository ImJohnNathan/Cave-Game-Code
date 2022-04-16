local DataStore = game:GetService("DataStoreService")
local GameData = DataStore:GetDataStore("inventoryDataa")
local baseStats = {
	Money = 100;
	BackpackSize = 5;
	Experience = 0;
	MithrilCount = 0;
	
	--Checks for Backpack Items
	BananaxeCount = 1;
	
	--Pet Count
	CookieCount = 0;
	DonutCount = 0;
	IceCreamCount = 0;
	DiamondCount = 0;
	QuartzCount = 0;
	
	--Checks For Type of Backpack
	BackpackProg = 1;
}


function saveData(Player, PlrStats)
	local dataToSave = {}
	warn("Saving data...")
	for i, data in pairs(PlrStats:GetChildren()) do
		dataToSave[i] = data.Value 
	end
	GameData:SetAsync(Player.UserId, dataToSave)
	warn("Data saved!")
end

game.Players.PlayerAdded:Connect(function(Player)
	local PlrStats = Instance.new("Folder", Player)
	PlrStats.Name = "PlrStats"
	
	local Money = Instance.new("NumberValue", PlrStats)
	Money.Name = "Money"
	Money.Value = baseStats.Money
	
	local BackpackSize = Instance.new("NumberValue", PlrStats)
	BackpackSize.Name = "BackpackSize"
	BackpackSize.Value = baseStats.BackpackSize
	
	local Experience = Instance.new("NumberValue", PlrStats)
	Experience.Name = "Experience"
	Experience.Value = baseStats.Experience
	
	local MithrilCount = Instance.new("NumberValue", PlrStats)
	MithrilCount.Name = "MithrilCount"
	MithrilCount.Value = baseStats.MithrilCount
	
	local BananaxeCount = Instance.new("NumberValue", PlrStats)
	BananaxeCount.Name = "BananaxeCount"
	BananaxeCount.Value = baseStats.BananaxeCount
	
	local BackpackProg = Instance.new("NumberValue", PlrStats)
	BackpackProg.Name = "BackpackProg"
	BackpackProg.Value = baseStats.BackpackProg
	
	local CookieCount = Instance.new("NumberValue", PlrStats)
	CookieCount.Name = "CookieCount"
	CookieCount.Value = baseStats.CookieCount
	
	local DonutCount = Instance.new("NumberValue", PlrStats)
	DonutCount.Name = "DonutCount"
	DonutCount.Value = baseStats.DonutCount
	
	local IceCreamCount = Instance.new("NumberValue", PlrStats)
	IceCreamCount.Name = "IceCreamCount"
	IceCreamCount.Value = baseStats.IceCreamCount
	
	local DiamondCount = Instance.new("NumberValue", PlrStats)
	DiamondCount.Name = "IceCreamCount"
	DiamondCount.Value = baseStats.DiamondCount
	
	local QuartzCount = Instance.new("NumberValue", PlrStats)
	QuartzCount.Name = "QuartzCount"
	QuartzCount.VAlue = baseStats.QuartzCount
	
	local plrSaves
	pcall(function()
		plrSaves = GameData:GetAsync(Player.UserId)
	end)
	
	if plrSaves then
		--If player has Data
		warn("Player has Data!")
		for i, data in pairs(PlrStats:GetChildren()) do
			data.Value = plrSaves[i]
			warn(data.Name,":", data.Value)
		end
	else
		warn("Player has no data.")
		--If player doesn't have Data
		for i, data in pairs(PlrStats:GetChildren()) do
			print(data.Name,":", data.Value)
		end
	end
end)

game.Players.PlayerRemoving:Connect(function(Player)
	local PlrStats = Player:WaitForChild("PlrStats")
	saveData(Player, PlrStats)
end)
