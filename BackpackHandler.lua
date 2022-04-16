local Player = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LastAddedPlayer = ""
local BackpackStorage = ReplicatedStorage.Backpacks

function giveBackpack(player)
	LastAddedPlayer = player.Name
	local Humanoid = game.Workspace:WaitForChild(LastAddedPlayer).Humanoid
	if Humanoid then
		local CurrentPlayer = game.Players:WaitForChild(LastAddedPlayer)
		local BackpackProg = CurrentPlayer:WaitForChild("PlrStats").BackpackProg.Value
		if BackpackProg == 1 then
			local StarterBackpack = BackpackStorage.StarterBackpack
			Humanoid:AddAccessory(StarterBackpack:Clone())

		elseif BackpackProg == 2 then
			local MugBloodedBackpack = BackpackStorage.MugBloodedBackpack
			Humanoid:AddAccessory(MugBloodedBackpack:Clone())

		elseif BackpackProg == 3 then
			local StorageBackpack = BackpackStorage.StorageBackpack
			Humanoid:AddAccessory(StorageBackpack:Clone())
		else
			wait(0.1)
			giveBackpack(player)
		end
	end
end

Player.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(giveBackpack(player))
end)
