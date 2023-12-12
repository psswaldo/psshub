-- By Whacky Speed, dont skid, share, steal, copy, or other sort of things!

-- library
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/psswaldo/psshub/main/psslibrary.lua"))()

-- Functions/Values
local Player = game:GetService('Players').LocalPlayer

game:GetService('ReplicatedStorage').raceInProgress.Changed:Connect(function()
	if _G.AR == true then		
		if game:GetService('ReplicatedStorage').raceInProgress.Value == true then
			game:GetService('ReplicatedStorage').rEvents.raceEvent:FireServer("joinRace")
		end
	end
end)

game:GetService('ReplicatedStorage').raceStarted.Changed:Connect(function()
	if _G.AR == true then
		if game:GetService('ReplicatedStorage').raceStarted.Value == true then
			for i, v in pairs(game:GetService('Workspace').raceMaps:GetChildren()) do
				local OldFinishPosition = v.finishPart.CFrame
				v.finishPart.CFrame = Player.Character.HumanoidRootPart.CFrame
				wait()
				v.finishPart.CFrame = OldFinishPosition
			end
		end
		wait(2)
	end
end)

-- tabs
local window = library:CreateWindow("Legends Of Speed")
local tab1 = window:CreateTab("Auto Farm","15606401129")
local tab2 = window:CreateTab("Other Farm","15608485162")
local tab3 = window:CreateTab("Eggs","15608445183")
local tab4 = window:CreateTab("Hatch Pets","15608460156")
local tab5 = window:CreateTab("Evolve Pets","15608478334")
local tab9 = window:CreateTab("Hatch Trails","15613339256")
local tab12 = window:CreateTab("Teleports","6022668951")
local tab6 = window:CreateTab("Rebirths","15613799389")
local tab7 = window:CreateTab("Settings","15606415939")

tab1:CreateSection("Universal")
tab1:CreateToggle("Auto Race",function(state)
	if state then 
		_G.AR = true 
	else 
		_G.AR = false 
	end 
end)
tab1:CreateToggle("Auto Rebirth",function(state)
    if state then 
		_G.loop = true 
		while _G.loop == true do wait() 
			game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest") 
			wait(1)
		end 
	else 
		_G.loop = false 
	end 
end)
tab1:CreateToggle("Auto Hoops V1 (Buggy)",function(state)
	if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
            	for i,v in pairs(game:GetService("Workspace").Hoops:GetChildren()) do
		    		firetouchinterest(v, game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, 0)
		    		wait()
		    		firetouchinterest(v, game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, 1)
				end
			end 
         else 
            _G.loop = false 
         end 
end)
tab1:CreateToggle("Auto Hoops V2",function(state)
	if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
            	local children = workspace.Hoops:GetChildren()
                    for i, child in ipairs(children) do
                        if child.Name == "Hoop" then
                            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        end    
                    end
                end 
         else 
            _G.loop = false 
         end 
end)
tab1:CreateToggle("Trades",function(state)
	if state then 
		local args = { 
    		[1] = "enableTrading" 
    	} 
    	game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("tradingEvent"):FireServer(unpack(args)) 
	else 
		local args = { 
	    	[1] = "disableTrading" 
     	}
     	game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("tradingEvent"):FireServer(unpack(args)) 
	end 
end)


-- City
tab1:CreateSection("Main City")
tab1:CreateToggle("Yellow Orb",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)
tab1:CreateToggle("Orange Orb",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "City")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)
tab1:CreateToggle("Blue Orb",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "City")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)
tab1:CreateToggle("Red Orb",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)
tab1:CreateToggle("Gem",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)

-- Snow City
tab1:CreateSection("Snow City")
tab1:CreateToggle("Yellow Orb",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)
tab1:CreateToggle("Orange Orb",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "Snow City")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)
tab1:CreateToggle("Blue Orb",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "Snow City")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)
tab1:CreateToggle("Red Orb",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)
tab1:CreateToggle("Gem",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)

-- Magma City
tab1:CreateSection("Magma City")
tab1:CreateToggle("Yellow Orb",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)
tab1:CreateToggle("Orange Orb",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "Magma City")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)
tab1:CreateToggle("Blue Orb",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "Magma City")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)
tab1:CreateToggle("Red Orb",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)
tab1:CreateToggle("Gem",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)

-- Legends Highway
tab1:CreateSection("Legends Highway")
tab1:CreateToggle("Yellow Orb",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Legends Highway")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)
tab1:CreateToggle("Orange Orb",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "Legends Highway")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)
tab1:CreateToggle("Blue Orb",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "Legends Highway")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)
tab1:CreateToggle("Red Orb",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Legends Highway")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)
tab1:CreateToggle("Gem",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Legends Highway")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)

-- Other Farm
-- Desert
tab2:CreateSection("Desert")
tab2:CreateToggle("Yellow Orb",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)
tab2:CreateToggle("Orange Orb",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "Desert")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)
tab2:CreateToggle("Blue Orb",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "Desert")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)
tab2:CreateToggle("Red Orb",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)
tab2:CreateToggle("Gem",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)

-- Space
tab2:CreateSection("Space")
tab2:CreateToggle("Yellow Orb",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)
tab2:CreateToggle("Orange Orb",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "Space")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)
tab2:CreateToggle("Blue Orb",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "Space")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)
tab2:CreateToggle("Red Orb",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)
tab2:CreateToggle("Gem",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               for i = 1, 100 do
             	   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space")
           	 end
         	   wait(0.3)
            end 
         else 
            _G.loop = false 
         end 
end)

-- Eggs
tab3:CreateSection("Main Crystals")
tab3:CreateToggle("Red Crystal",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = {
    [1] = "openCrystal",
    [2] = "Red Crystal"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
         else 
            _G.loop = false 
         end 
end)

tab3:CreateToggle("Lightning Crystal",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = {
    [1] = "openCrystal",
    [2] = "Lightning Crystal"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
         else 
            _G.loop = false 
         end 
end)

tab3:CreateToggle("Yellow Crystal",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = {
    [1] = "openCrystal",
    [2] = "Yellow Crystal"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
         else 
            _G.loop = false 
         end 
end)

tab3:CreateToggle("Purple Crystal",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = {
    [1] = "openCrystal",
    [2] = "Purple Crystal"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
         else 
            _G.loop = false 
         end 
end)

tab3:CreateToggle("Blue Crystal",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = {
    [1] = "openCrystal",
    [2] = "Blue Crystal"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
         else 
            _G.loop = false 
         end 
end)

tab3:CreateToggle("Snow Crystal",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = {
    [1] = "openCrystal",
    [2] = "Snow Crystal"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
         else 
            _G.loop = false 
         end 
end)

tab3:CreateToggle("Lava Crystal",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = {
    [1] = "openCrystal",
    [2] = "Lava Crystal"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
         else 
            _G.loop = false 
         end 
end)

tab3:CreateToggle("Inferno Crystal",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = {
    [1] = "openCrystal",
    [2] = "Inferno Crystal"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
         else 
            _G.loop = false 
         end 
end)

tab3:CreateToggle("Electro Legends Crystal",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = {
    [1] = "openCrystal",
    [2] = "Electro Legends Crystal"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
         else 
            _G.loop = false 
         end 
end)

tab3:CreateSection("Space Crystals")

tab3:CreateToggle("Space Crystal",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = {
    [1] = "openCrystal",
    [2] = "Space Crystal"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
         else 
            _G.loop = false 
         end 
end)

tab3:CreateToggle("Alien Crystal",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = {
    [1] = "openCrystal",
    [2] = "Alien Crystal"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
         else 
            _G.loop = false 
         end 
end)

tab3:CreateSection("Desert Crystals")

tab3:CreateToggle("Desert Crystal",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = {
    [1] = "openCrystal",
    [2] = "Desert Crystal"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
         else 
            _G.loop = false 
         end 
end)

tab3:CreateToggle("Electro Crystal",function(state)
    if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = {
    [1] = "openCrystal",
    [2] = "Electro Crystal"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
         else 
            _G.loop = false 
         end 
end)

-- Pets
tab4:CreateSection("Hatch Basic Pets")
tab4:CreateToggle("Red Kitty",function(state)
	if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = { 
   		   	  [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Kitty")   
			    }
				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 
            end 
         else 
            _G.loop = false 
         end 
end)
tab4:CreateToggle("Red Bunny",function(state)
	if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = { 
   		   	  [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Bunny")   
			    }
				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 
            end 
         else 
            _G.loop = false 
         end 
end)
tab4:CreateToggle("Blue Bunny",function(state)
	if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = { 
   		   	  [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Blue Bunny")   
			    }
				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 
            end 
         else 
            _G.loop = false 
         end 
end)
tab4:CreateToggle("Silver Dog",function(state)
	if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = { 
   		   	  [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Silver Dog")   
			    }
				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 
            end 
         else 
            _G.loop = false 
         end 
end)
tab4:CreateToggle("Yellow Squeak",function(state)
	if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = { 
   		   	  [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Yellow Squeak")   
			    }
				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 
            end 
         else 
            _G.loop = false 
         end 
end)

-- tab4 - Hatch Advanced Pets
tab4:CreateSection("Hatch Advanced Pets")
tab4:CreateToggle("Green Vampy",function(state)
	if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = { 
   		   	  [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green Vampy")   
			    }
				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 
            end 
         else 
            _G.loop = false 
         end 
end)
tab4:CreateToggle("Dark Golem",function(state)
	if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = { 
   		   	  [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Dark Golem")   
			    }
				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 
            end 
         else 
            _G.loop = false 
         end 
end)
tab4:CreateToggle("Pink Butterfly",function(state)
	if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = { 
   		   	  [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Pink Butterfly")   
			    }
				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 
            end 
         else 
            _G.loop = false 
         end 
end)
tab4:CreateToggle("Yellow Butterfly",function(state)
	if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = { 
   		   	  [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Yellow Butterfly")   
			    }
				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 
            end 
         else 
            _G.loop = false 
         end 
end)
tab4:CreateToggle("Green Golem",function(state)
	if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = { 
   		   	  [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green Golem")   
			    }
				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 
            end 
         else 
            _G.loop = false 
         end 
end)

-- tab4 - Hatch Rare Pets
tab4:CreateSection("Hatch Rare Pets")
tab4:CreateToggle("Purple Pegasus", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
                [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Purple Pegasus")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab4:CreateToggle("Golden Angel", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
                [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Golden Angel")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab4:CreateToggle("Orange Pegasus", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
                [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Orange Pegasus")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab4:CreateToggle("Orange Falcon", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
                [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Orange Falcon")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)


-- tab4 - Hatch Epic Pets
tab4:CreateSection("Hatch Epic Pets")
tab4:CreateToggle("Golden Phoenix", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
                [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Golden Phoenix")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab4:CreateToggle("Green Firecaster", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
                [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green Firecaster")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab4:CreateToggle("White Phoenix", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
                [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("White Phoenix")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab4:CreateToggle("Blue Firecaster", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
                [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Blue Firecaster")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab4:CreateToggle("Red Phoenix", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
                [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Phoenix")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab4:CreateToggle("Red Firecaster", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
                [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Firecaster")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)


-- tab4 - Hatch Unique Pets
tab4:CreateSection("Hatch Unique Pets")
tab4:CreateToggle("Flaming Hedgehog", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
                [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Flaming Hedgehog")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab4:CreateToggle("Voltaic Falcon", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
                [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Voltaic Falcon")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab4:CreateToggle("Electro Golem", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
                [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Electro Golem")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab4:CreateToggle("Magical Pegasus", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
                [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Magical Pegasus")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab4:CreateToggle("Void Dragon", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
                [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Void Dragon")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab4:CreateToggle("Ultra Birdie", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
                [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Ultra Birdie")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)


-- tab4 - Hatch Omega Pets
tab4:CreateSection("Hatch Omega Pets")
tab4:CreateToggle("Dark Soul Birdie", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
                [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Dark Soul Birdie")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab4:CreateToggle("Eternal Nebula Dragon", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
                [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Eternal Nebula Dragon")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab4:CreateToggle("Hypersonic Pegasus", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
                [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Hypersonic Pegasus")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab4:CreateToggle("Shadows Edge Kitty", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
                [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Shadows Edge Kitty")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab4:CreateToggle("Soul Fusion Dog", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
                [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Soul Fusion Dog")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab4:CreateToggle("Ultimate Overdrive Bunny", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
                [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Ultimate Overdrive Bunny")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

-- Evolve
tab5:CreateSection("Evolve Basic Pets")
tab5:CreateToggle("Red Kitty",function(state)
	if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = {
    [1] = "evolvePet",
    [2] = "Red Kitty"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args)) 
            end 
         else 
            _G.loop = false 
         end 
end)
tab5:CreateToggle("Red Bunny",function(state)
	if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = {
    [1] = "evolvePet",
    [2] = "Red Bunny"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args)) 
            end 
         else 
            _G.loop = false 
         end 
end)
tab5:CreateToggle("Blue Bunny",function(state)
	if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = {
    [1] = "evolvePet",
    [2] = "Blue Bunny"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args)) 
            end 
         else 
            _G.loop = false 
         end 
end)


local args = {
    [1] = "evolvePet",
    [2] = "Dark Golem"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args))


tab5:CreateToggle("Silver Dog",function(state)
	if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = {
    [1] = "evolvePet",
    [2] = "Silver Dog"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args)) 
            end 
         else 
            _G.loop = false 
         end 
end)
tab5:CreateToggle("Yellow Squeak",function(state)
	if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = {
    [1] = "evolvePet",
    [2] = "Yellow Squeak"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args)) 
            end 
         else 
            _G.loop = false 
         end 
end)

-- tab5 - Evolve Advanced Pets
tab5:CreateSection("Evolve Advanced Pets")
tab5:CreateToggle("Green Vampy",function(state)
	if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = {
    [1] = "evolvePet",
    [2] = "Green Vampy"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args)) 
            end 
         else 
            _G.loop = false 
         end 
end)
tab5:CreateToggle("Dark Golem",function(state)
	if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = {
    [1] = "evolvePet",
    [2] = "Dark Golem"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args)) 
            end 
         else 
            _G.loop = false 
         end 
end)
tab5:CreateToggle("Pink Butterfly",function(state)
	if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = {
    [1] = "evolvePet",
    [2] = "Pink Butterfly"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args)) 
            end 
         else 
            _G.loop = false 
         end 
end)
tab5:CreateToggle("Yellow Butterfly",function(state)
	if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = {
    [1] = "evolvePet",
    [2] = "Yellow Butterfly"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args)) 
            end 
         else 
            _G.loop = false 
         end 
end)
tab5:CreateToggle("Green Golem",function(state)
	if state then 
            _G.loop = true 
            while _G.loop == true do wait() 
               local args = {
    [1] = "evolvePet",
    [2] = "Green Golem"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args)) 
            end 
         else 
            _G.loop = false 
         end 
end)

-- tab5 - Evolve Rare Pets
tab5:CreateSection("Evolve Rare Pets")
tab5:CreateToggle("Purple Pegasus", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
				[1] = "evolvePet",
				[2] = "Purple Pegasus"
			}

			game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab5:CreateToggle("Golden Angel", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
				[1] = "evolvePet",
				[2] = "Golden Angel"
			}

			game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab5:CreateToggle("Orange Pegasus", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
				[1] = "evolvePet",
				[2] = "Orange Pegasus"
			}

			game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab5:CreateToggle("Orange Falcon", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
				[1] = "evolvePet",
				[2] = "Orange Falcon"
			}

			game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)


-- tab5 - Evolve Epic Pets
tab5:CreateSection("Evolve Epic Pets")
tab5:CreateToggle("Golden Phoenix", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
				[1] = "evolvePet",
				[2] = "Golden Phoenix"
			}

			game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab5:CreateToggle("Green Firecaster", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
				[1] = "evolvePet",
				[2] = "Green Firecaster"
			}

			game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab5:CreateToggle("White Phoenix", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
				[1] = "evolvePet",
				[2] = "White Phoenix"
			}

			game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab5:CreateToggle("Blue Firecaster", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
				[1] = "evolvePet",
				[2] = "Blue Firecaster"
			}

			game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab5:CreateToggle("Red Phoenix", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
				[1] = "evolvePet",
				[2] = "Red Phoenix"
			}

			game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab5:CreateToggle("Red Firecaster", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
				[1] = "evolvePet",
				[2] = "Red Firecaster"
			}

			game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)


-- tab5 - Evolve Unique Pets
tab5:CreateSection("Evolve Unique Pets")
tab5:CreateToggle("Flaming Hedgehog", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
				[1] = "evolvePet",
				[2] = "Flaming Hedgehog"
			}

			game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab5:CreateToggle("Voltaic Falcon", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
				[1] = "evolvePet",
				[2] = "Voltaic Falcon"
			}

			game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab5:CreateToggle("Electro Golem", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
				[1] = "evolvePet",
				[2] = "Electro Golem"
			}

			game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab5:CreateToggle("Magical Pegasus", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
				[1] = "evolvePet",
				[2] = "Magical Pegasus"
			}

			game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab5:CreateToggle("Void Dragon", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
				[1] = "evolvePet",
				[2] = "Void Dragon"
			}

			game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab5:CreateToggle("Ultra Birdie", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
				[1] = "evolvePet",
				[2] = "Ultra Birdie"
			}

			game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)


-- tab5 - Evolve Omega Pets
tab5:CreateSection("Evolve Omega Pets")
tab5:CreateToggle("Dark Soul Birdie", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
				[1] = "evolvePet",
				[2] = "Dark Soul Birdie"
			}

			game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab5:CreateToggle("Eternal Nebula Dragon", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
				[1] = "evolvePet",
				[2] = "Eternal Nebula Dragon"
			}

			game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab5:CreateToggle("Hypersonic Pegasus", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
				[1] = "evolvePet",
				[2] = "Hypersonic Pegasus"
			}

			game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab5:CreateToggle("Shadows Edge Kitty", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
				[1] = "evolvePet",
				[2] = "Shadows Edge Kitty"
			}

			game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab5:CreateToggle("Soul Fusion Dog", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
				[1] = "evolvePet",
				[2] = "Soul Fusion Dog"
			}

			game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab5:CreateToggle("Ultimate Overdrive Bunny", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
				[1] = "evolvePet",
				[2] = "Ultimate Overdrive Bunny"
			}

			game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)


-- Rebirths
tab6:CreateSection("Rebirth Info")
tab6:CreateLabel("Glitch Rebirth - Pet Rarity") 
tab6:CreateLabel("9 - Omega")  

  
tab6:CreateLabel("10 - Omega")  

  
tab6:CreateLabel("11 - Omega")  

  
tab6:CreateLabel("12 - Omega")  

  
tab6:CreateLabel("13 - Omega")  

  
tab6:CreateLabel("14 - Omega")  

  

tab6:CreateLabel("15 - Omega")  

  
tab6:CreateLabel("16 - Omega")  

  
tab6:CreateLabel("17 - Omega")  

  
tab6:CreateLabel("18 - Omega")  

  
tab6:CreateLabel("19 - Omega")  

  
tab6:CreateLabel("20 - Omega")  

  
tab6:CreateLabel("23 -  Omega")  

  
tab6:CreateLabel("24 - Omega")  

  
tab6:CreateLabel("26 - Omega")  

  

tab6:CreateLabel("31 - Omega")  

  
tab6:CreateLabel("32 - Omega")  

  
tab6:CreateLabel("33 - Omega")  

  
tab6:CreateLabel("34 - Omega")  

  
tab6:CreateLabel("35 - Omega")  

  
tab6:CreateLabel("36 - Omega")  

  
tab6:CreateLabel("37 - Omega")  

  
tab6:CreateLabel("38 - Omega")  

  
tab6:CreateLabel("42 - Omega")  

  

tab6:CreateLabel("43 - Omega")  

  
tab6:CreateLabel("44 - Omega")  

  

tab6:CreateLabel("45 - Omega")  

  
tab6:CreateLabel("47 - Omega")  

  
tab6:CreateLabel("49 - Omega")  

  
tab6:CreateLabel("51 - Omega")  

  
tab6:CreateLabel("54 - Omega")  

  
tab6:CreateLabel("59 - Omega")  

  
tab6:CreateLabel("64 - Omega")  

  
tab6:CreateLabel("69 - Omega")  

  
tab6:CreateLabel("71 - Omega")  

  
tab6:CreateLabel("79 - Omega")  

  
tab6:CreateLabel("83 - Omega")  

  
tab6:CreateLabel("84 - Omega")  

  
tab6:CreateLabel("89 - Omega")  

  
tab6:CreateLabel("94 - Omega")  

  
tab6:CreateLabel("99 - Omega")  

  
tab6:CreateLabel("101 - Omega")  

  
tab6:CreateLabel("104 - Omega")  

  
tab6:CreateLabel("109 - Omega")  

  
tab6:CreateLabel("124 - Omega")  

  
tab6:CreateLabel("139 - Omega")  

  
tab6:CreateLabel("140 - Rare")  

  
tab6:CreateLabel("144 - Omega")  

  
tab6:CreateLabel("149 - Rare")  

  
tab6:CreateLabel("179 - Omega")  

  
tab6:CreateLabel("189 - Omega")  

  
tab6:CreateLabel("199 - Epic")  

  
tab6:CreateLabel("224 - Omega")  

  
tab6:CreateLabel("239 - Omega")  

 
tab6:CreateLabel("249 - Unique")  

 
tab6:CreateLabel("254 - Omega")  

 
tab6:CreateLabel("287 - Omega")  

 
tab6:CreateLabel("299 - Rare")  

 
tab6:CreateLabel("329 - Omega")  

 
tab6:CreateLabel("335 - Omega")  

 
tab6:CreateLabel("349 - Basic")  

 
tab6:CreateLabel("374 - Rare")  

 
tab6:CreateLabel("384 - Omega")  

 
tab6:CreateLabel("399 - Epic")  

 
tab6:CreateLabel("439 - Omega")  

 
tab6:CreateLabel("429 - Omega")  

 
tab6:CreateLabel("449 - Rare")  

 
tab6:CreateLabel("479 - Omega")  

 
tab6:CreateLabel("499 - Unique")  

 
tab6:CreateLabel("549 - Basic")  

 
tab6:CreateLabel("574 - Omega")  

 
tab6:CreateLabel("599 - Basic")  

 
tab6:CreateLabel("629 - Omega")  

 
tab6:CreateLabel("639 - Omega")  

 
tab6:CreateLabel("649 - Basic")  

 
tab6:CreateLabel("679 - Omega")  

 
tab6:CreateLabel("699 - Advanced")  

 
tab6:CreateLabel("719 - Omega")  

 
tab6:CreateLabel("739 - Omega")  

 

tab6:CreateLabel("749 - Rare")  

 
tab6:CreateLabel("824 - Rare")  

 
tab6:CreateLabel("849 - Basic")  

 
tab6:CreateLabel("874 - Unique")  

 
tab6:CreateLabel("949 - Basic")  

 
tab6:CreateLabel("999 - Epic")  

 

tab6:CreateLabel("1049 - Rare")  

  
tab6:CreateLabel("1099 - Basic")  

  
tab6:CreateLabel("1199 - Advanced")  

  
tab6:CreateLabel("1249 - Unique")  

  
tab6:CreateLabel("1299 - Basic")  

  
tab6:CreateLabel("1374 - Rare")  

  
tab6:CreateLabel("1399 - Rare")  

 
tab6:CreateLabel("1399 - Epic")  

  
tab6:CreateLabel("1499 - Advanced")  

  
tab6:CreateLabel("1749 - Unique")  

  
tab6:CreateLabel("2399 - Epic")  

  

tab6:CreateLabel("2699 - Rare")  

  
tab6:CreateLabel("2749 - Rare")  

  
tab6:CreateLabel("2799 - Epic")  

  
tab6:CreateLabel("2999 - Unique")  

  
tab6:CreateLabel("3749 - Unique")  

  
tab6:CreateLabel("3849 - Basic")  

  
tab6:CreateLabel("3999 - Unique")  

  
tab6:CreateLabel("4399 - Epic")  

  
tab6:CreateLabel("4549 - Rare")  

  
tab6:CreateLabel("4599 - Basic")  

  
tab6:CreateLabel("4999 - Unique")  

  
tab6:CreateLabel("5099 - Advanced")  

  
tab6:CreateLabel("5249 - Rare")  

  
tab6:CreateLabel("6799 - Rare")  

  
tab6:CreateLabel("7249 - Basic")  

  
tab6:CreateLabel("7499 - Omega")  

  
tab6:CreateLabel("7599 - Advanced")  

  
tab6:CreateLabel("7749 - Basic")  

  
tab6:CreateLabel("7999 - Epic")  

  
tab6:CreateLabel("8249 - Unique")  

  
tab6:CreateLabel("8749 - Unique")  

  

tab6:CreateLabel("8799 - Basic")  

  
tab6:CreateLabel("9099 - Epic")  

  
tab6:CreateLabel("9499 - Rare")  

  
tab6:CreateLabel("9749 - Unique")  

  
tab6:CreateLabel("9999 - Unique")  

  
tab6:CreateLabel("10149 - Basic")  

  
tab6:CreateLabel("10499 - Rare")  

  
tab6:CreateLabel("10999 - Omega")  

  
tab6:CreateLabel("11399 - Epic")  

  
tab6:CreateLabel("11249 - Omega") 

 
tab6:CreateLabel("11699 - Advanced")  

  
tab6:CreateLabel("11999 - Epic")  

  
tab6:CreateLabel("12349 - Basic")  

  
tab6:CreateLabel("12649 - Rare")  

  
tab6:CreateLabel("12749 - Unique")  

-- settings
tab7:CreateSection("Player Settings")
tab7:CreateSlider("Walk Speed",300,function(pws)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = pws
end)
tab7:CreateSlider("Jump Power",250,function(pjp)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = pjp
end)
tab7:CreateSlider("Hip Height",100,function(phh)
	game.Players.LocalPlayer.Character.Humanoid.HipHeight = phh
end)
tab7:CreateSlider("Gravity",200,function(pg)
	game.workspace.Gravity = pg
end)
tab7:CreateButton("Anti Kick",function()
  game:GetService("Players").LocalPlayer.Idled:connect(function()
      game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
      wait(1)
      game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
  end)
end)
tab7:CreateSection("Game Settings")
tab7:CreateButton("Low Graphics",function()
local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
sethiddenproperty(l,"Technology",2)
sethiddenproperty(t,"Decoration",false)
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = 0
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(w:GetDescendants()) do
    if v:IsA("BasePart") and not v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif (v:IsA("Decal") or v:IsA("Texture")) and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") and decalsyeeted then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    elseif v:IsA("SpecialMesh") and decalsyeeted  then
        v.TextureId=0
    elseif v:IsA("ShirtGraphic") and decalsyeeted then
        v.Graphic=0
    elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsyeeted then
        v[v.ClassName.."Template"]=0
    end
end
for i = 1,#l:GetChildren() do
    e=l:GetChildren()[i]
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
w.DescendantAdded:Connect(function(v)
    wait()--prevent errors and shit
   if v:IsA("BasePart") and not v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") and decalsyeeted then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    elseif v:IsA("SpecialMesh") and decalsyeeted then
        v.TextureId=0
    elseif v:IsA("ShirtGraphic") and decalsyeeted then
        v.ShirtGraphic=0
    elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsyeeted then
        v[v.ClassName.."Template"]=0
    end
end)
end)
tab7:CreateButton("RTX",function()
	getgenv().mode = "Summer"
local a = game.Lighting
a.Ambient = Color3.fromRGB(33, 33, 33)
a.Brightness = 6.67
a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
a.ColorShift_Top = Color3.fromRGB(255, 247, 237)
a.EnvironmentDiffuseScale = 0.105
a.EnvironmentSpecularScale = 0.522
a.GlobalShadows = true
a.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
a.ShadowSoftness = 0.04
a.GeographicLatitude = -15.525
a.ExposureCompensation = 0.75
local b = Instance.new("BloomEffect", a)
b.Enabled = true
b.Intensity = 0.04
b.Size = 1900
b.Threshold = 0.915
local c = Instance.new("ColorCorrectionEffect", a)
c.Brightness = 0.176
c.Contrast = 0.39
c.Enabled = true
c.Saturation = 0.2
c.TintColor = Color3.fromRGB(217, 145, 57)
if getgenv().mode == "Summer" then
   c.TintColor = Color3.fromRGB(255, 220, 148)
elseif getgenv().mode == "Autumn" then
   c.TintColor = Color3.fromRGB(217, 145, 57)
else
   b:Destroy()
   c:Destroy()
end
local d = Instance.new("DepthOfFieldEffect", a)
d.Enabled = true
d.FarIntensity = 0.077
d.FocusDistance = 21.54
d.InFocusRadius = 20.77
d.NearIntensity = 0.277
local e = Instance.new("ColorCorrectionEffect", a)
e.Brightness = 0
e.Contrast = -0.07
e.Saturation = 0
e.Enabled = true
e.TintColor = Color3.fromRGB(255, 247, 239)
local e2 = Instance.new("ColorCorrectionEffect", a)
e2.Brightness = 0.2
e2.Contrast = 0.45
e2.Saturation = -0.1
e2.Enabled = true
e2.TintColor = Color3.fromRGB(255, 255, 255)
local s = Instance.new("SunRaysEffect", a)
s.Enabled = true
s.Intensity = 0.01
s.Spread = 0.146
end)

tab7:CreateSection("Credits")
tab7:CreateLabel("By Whacky Speed")  
tab7:CreateButton("Copy Discord Invite",function()
    setclipboard("https://discord.com/invite/P5XPnQ3JYc")
end)

-- TP
tab12:CreateSection("City Teleports")
tab12:CreateButton("City",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9682.98828, 74.8522873, 3099.03394, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
end)
tab12:CreateButton("Snow City",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9676.13867, 74.8522873, 3782.69385, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end)
tab12:CreateButton("Magma City",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11054.9688, 232.791656, 4898.62842, -0.0872479677, 0.000158954252, -0.996186614, -0.00054083002, 0.999999821, 0.00020692969, 0.996186495, 0.000556821818, -0.0872478485)
end)
tab12:CreateButton("Legends Highway",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13098.8711, 232.791656, 5907.62793, -0.0872479677, 0.000158954252, -0.996186614, -0.00054083002, 0.999999821, 0.00020692969, 0.996186495, 0.000556821818, -0.0872478485)
end)
tab12:CreateButton("Space",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-331.764069, 5.45415115, 585.201721, -1.03712082e-05, 0.93968749, 0.34203434, -1, -1.03712082e-05, -1.81794167e-06, 1.81794167e-06, -0.34203434, 0.939687431)
end)
tab12:CreateButton("Desert",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2519.90063, 15.7072296, 4355.74072, 1.69873238e-05, 0.93922013, 0.343315423, -0.99999994, 1.69873238e-05, 2.9951334e-06, -2.9951334e-06, -0.343315423, 0.93922019)
end)

tab12:CreateSection("Space Teleports")
tab12:CreateButton("+1000 Hoop",function()
    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(Vector3.new(-465, 157, 743)))
end)
tab12:CreateButton("Alien Crystal",function()
    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(Vector3.new(-525, 143, 833)))
end)

tab12:CreateSection("Desert Teleports")
tab12:CreateButton("+8000 Hoop",function()
    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(Vector3.new(-3375, 258, 16914)))
end)
tab12:CreateButton("Electro Crystal",function()
    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(Vector3.new(-10682, 616, 3)))
end)

-- Hatch Trails
tab9:CreateSection("Numbers")
tab9:CreateToggle("1st Trail", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("1st Trail")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab9:CreateToggle("2nd Trail", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("2nd Trail")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Third Trail", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Third Trail")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Fourth Trail", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Fourth Trail")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Fifth Trail", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Fifth Trail")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateSection("B")
tab9:CreateToggle("BG Speed", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("BG Speed")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab9:CreateToggle("Blue & Green", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Blue & Green")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Blue Coin", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Blue Coin")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Blue Gem", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Blue Gem")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Blue Lightning", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Blue Lightning")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Blue Snow", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Blue Snow")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Blue Soul", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Blue Soul")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Blue Sparks", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Blue Sparks")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Blue Storm", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Blue Storm")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Blue Trail", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Blue Trail")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateSection("G")
tab9:CreateToggle("Golden Lightning", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Golden Lightning")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Green & Orange", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green & Orange")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Green Coin", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green Coin")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Green Gem", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green Gem")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Green Lightning", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green Lightning")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Green Snow", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green Snow")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Green Soul", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green Soul")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Green Sparks", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green Sparks")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Green Storm", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green Storm")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Green Trail", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green Trail")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateSection("O")
tab9:CreateToggle("OG Speed", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("OG Speed")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Orange Coin", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Orange Coin")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Orange Gem", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Orange Gem")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Orange Lightning", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Orange Lightning")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Orange Snow", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Orange Snow")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Orange Soul", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Orange Soul")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Orange Sparks", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Orange Sparks")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Orange Storm", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Orange Storm")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Orange Trail", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Orange Trail")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateSection("P")
tab9:CreateToggle("PP Speed", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("PP Speed")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Pink Gem", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Pink Gem")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Pink Lightning", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Pink Lightning")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Pink Snow", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Pink Snow")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Pink Soul", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Pink Soul")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Pink Sparks", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Pink Sparks")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Pink Storm", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Pink Storm")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Pink Trail", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Pink Trail")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Purple & Pink", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Purple & Pink")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Purple Coin", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Purple Coin")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Purple Gem", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Purple Gem")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Purple Lightning", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Purple Lightning")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Purple Soul", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild(" Purple Soul")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Purple Sparks", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Purple Sparks")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Purple Storm", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Purple Storm")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Purple Trail", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Purple Trail")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateSection("R")
tab9:CreateToggle("RB Speed", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("RB Speed")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Rainbow Lightning", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Rainbow Lightning")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Rainbow Soul", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Rainbow Soul")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Rainbow Sparks", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Rainbow Sparks")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Rainbow Speed", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Rainbow Speed")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Rainbow Steps", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Rainbow Steps")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Rainbow Storm", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Rainbow Storm")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Rainbow Trail", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Rainbow Trail")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Red & Blue", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red & Blue")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Red Coin", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Coin")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Red Gem", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Gem")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Red Lightning", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Lightning")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Red Snow", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Snow")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Red Soul", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Soul")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Red Sparks", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Sparks")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Red Storm", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Storm")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Red Trail", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Trail")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateSection("W")
tab9:CreateToggle("White Snow", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("White Snow")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateSection("Y")
tab9:CreateToggle("YB Speed", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("YB Speed")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Yellow & Blue", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Yellow & Blue")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Yellow Soul", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Yellow Soul")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
tab9:CreateToggle("Yellow Sparks", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Yellow Sparks")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)

tab9:CreateToggle("Yellow Trail", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
            local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Yellow Trail")
}

game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
        end
    else
        _G.loop = false
    end
end)
