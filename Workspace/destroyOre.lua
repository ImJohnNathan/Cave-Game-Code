function collectOre(player)
	local user = game.Players:WaitForChild(player.Name)
	script.Parent:Destroy()
	user.PlrStats.MithrilCount.Value += 1
end

script.Parent.ClickDetector.MouseClick:Connect(collectOre)

local baseOre = game.Workspace.Cave["1st Area"].Ore.Ore

