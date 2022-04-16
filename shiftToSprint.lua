local UIS = game:GetService("UserInputService")
local Player = game.Players.LocalPlayer
local Humanoid = workspace:WaitForChild(Player.Name).Humanoid
local keyPressed = false

UIS.InputBegan:Connect(function(Key, gameProcessed)
	if not gameProcessed then	
		if Key.KeyCode == Enum.KeyCode.LeftShift then
			if keyPressed == false then
				keyPressed = true
				Humanoid.WalkSpeed = 50
				while workspace.Camera.FieldOfView < 100 do
					workspace.Camera.FieldOfView = workspace.Camera.FieldOfView + 5
					wait(0.05)
				end
			end
		else
			print('hey')
		end
	end
end)

UIS.InputEnded:Connect(function(Key, gameProcessed)
	if not gameProcessed then
		if Key.KeyCode == Enum.KeyCode.LeftShift then
			if keyPressed == true then
				keyPressed = false
				Humanoid.WalkSpeed = 25
				while workspace.Camera.FieldOfView > 70 do
					workspace.Camera.FieldOfView = workspace.Camera.FieldOfView - 2
					wait(0.04)
				end
			else
				print("hey")
			end
		end
	end
end)
