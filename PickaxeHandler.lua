local Players = game:GetService("Players")
local RS = game:GetService("ReplicatedStorage")
local Pickaxes = {
	Bananaxe = RS.Pickaxes.Bananaxe;
}


game.Players.PlayerAdded:Connect(function(plr)
	local Plr = plr.Name
	local Player = workspace:WaitForChild(Plr)
	local PickaxeProg = Players:WaitForChild(Plr).PlrStats.PickaxeProg
	local Backpack = PickaxeProg.Parent.Parent.Backpack
	if PickaxeProg.Value == 1 then
		local addedPickaxe = Pickaxes.Bananaxe:Clone()
		addedPickaxe.Parent = Backpack
		warn("Pickaxe progress data found... cloned to " .. Plr .. "'s backpack.")
	else
		warn("No pickaxe progress data found for " .. Plr)
		return
	end
	
end)
