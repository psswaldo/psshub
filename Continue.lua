local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local Library = {}
function Library:CreateWindow(Title)
	--if game.CoreGui:FindFirstChild("PSSLibrary") then
		--game.CoreGui:FindFirstChild("PSSLibrary"):Destroy()
	--end
	
	local PSSLibrary = Instance.new("ScreenGui")
	local Main_1 = Instance.new("Frame")
	local UICorner_1 = Instance.new("UICorner")
	local TopBar_1 = Instance.new("Frame")
	local Title_1 = Instance.new("TextLabel")
	local UIPadding_1 = Instance.new("UIPadding")
	local CloseBtn_1 = Instance.new("TextButton")
	local SideBar_1 = Instance.new("Frame")
	local Tabs_1 = Instance.new("ScrollingFrame")
	local UIListLayout_1 = Instance.new("UIListLayout")
	local UIPadding_3 = Instance.new("UIPadding")
	local ElementsHolder_1 = Instance.new("Frame")
	
	PSSLibrary.Name = "PSSLibrary"
	PSSLibrary.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

	Main_1.Name = "Main"
	Main_1.Parent = PSSLibrary
	Main_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Main_1.BackgroundColor3 = Color3.fromRGB(13,13,13)
	Main_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Main_1.BorderSizePixel = 0
	Main_1.Position = UDim2.new(0.5, 0,0.5, 0)
	Main_1.Size = UDim2.new(0, 411,0, 341)

	local gui = Main_1

	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
	
	UICorner_1.Parent = Main_1

	TopBar_1.Name = "TopBar"
	TopBar_1.Parent = Main_1
	TopBar_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	TopBar_1.BackgroundTransparency = 1
	TopBar_1.BorderColor3 = Color3.fromRGB(0,0,0)
	TopBar_1.BorderSizePixel = 0
	TopBar_1.Size = UDim2.new(0, 411,0, 29)

	Title_1.Name = "Title"
	Title_1.Parent = TopBar_1
	Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Title_1.BackgroundTransparency = 1
	Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Title_1.BorderSizePixel = 0
	Title_1.Position = UDim2.new(0, 0,0, 2)
	Title_1.Size = UDim2.new(0, 335,0, 25)
	Title_1.Font = Enum.Font.Gotham
	Title_1.Text = "PSS Hub | "..Title
	Title_1.TextColor3 = Color3.fromRGB(172,114,125)
	Title_1.TextSize = 14
	Title_1.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding_1.Parent = Title_1
	UIPadding_1.PaddingLeft = UDim.new(0,8)

	CloseBtn_1.Name = "CloseBtn"
	CloseBtn_1.Parent = TopBar_1
	CloseBtn_1.Active = true
	CloseBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	CloseBtn_1.BackgroundTransparency = 1
	CloseBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
	CloseBtn_1.BorderSizePixel = 0
	CloseBtn_1.Position = UDim2.new(0.941605866, 0,0.206896558, 0)
	CloseBtn_1.Size = UDim2.new(0, 17,0, 17)
	CloseBtn_1.Font = Enum.Font.Gotham
	CloseBtn_1.Text = "X"
	CloseBtn_1.TextColor3 = Color3.fromRGB(172,114,125)
	CloseBtn_1.TextSize = 16

	SideBar_1.Name = "SideBar"
	SideBar_1.Parent = Main_1
	SideBar_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	SideBar_1.BackgroundTransparency = 1
	SideBar_1.BorderColor3 = Color3.fromRGB(0,0,0)
	SideBar_1.BorderSizePixel = 0
	SideBar_1.Position = UDim2.new(0, 0,0.0967741907, 0)
	SideBar_1.Size = UDim2.new(0, 128,0, 308)

	Tabs_1.Name = "Tabs"
	Tabs_1.Parent = SideBar_1
	Tabs_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Tabs_1.BackgroundTransparency = 1
	Tabs_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Tabs_1.BorderSizePixel = 0
	Tabs_1.Size = UDim2.new(0, 128,0, 308)
	Tabs_1.AutomaticCanvasSize = Enum.AutomaticSize.Y
	Tabs_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
	Tabs_1.CanvasPosition = Vector2.new(0, 0)
	Tabs_1.CanvasSize = UDim2.new(0, 0,0.5, 0)
	Tabs_1.ElasticBehavior = Enum.ElasticBehavior.Never
	Tabs_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
	Tabs_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	Tabs_1.ScrollBarImageTransparency = 1
	Tabs_1.ScrollBarThickness = 1
	Tabs_1.ScrollingDirection = Enum.ScrollingDirection.Y
	Tabs_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
	Tabs_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
	Tabs_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right
	
	UIListLayout_1.Parent = Tabs_1
	UIListLayout_1.Padding = UDim.new(0,5)
	UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder

	UIPadding_3.Parent = Tabs_1
	UIPadding_3.PaddingBottom = UDim.new(0,2)
	UIPadding_3.PaddingTop = UDim.new(0,2)
	
	ElementsHolder_1.Name = "ElementsHolder"
	ElementsHolder_1.Parent = Main_1
	ElementsHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	ElementsHolder_1.BackgroundTransparency = 1
	ElementsHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	ElementsHolder_1.BorderSizePixel = 0
	ElementsHolder_1.Position = UDim2.new(0.326034069, 0,0.0967741907, 0)
	ElementsHolder_1.Size = UDim2.new(0, 277,0, 308)
	
	local Tabs = {}
	local first = true
	local currentTab = nil
	local currentTabIcon = nil
	function Tabs:CreateTab(TabName,TabIcon)
		
		-- Text
		local targetTabColorOn = Color3.fromRGB(172,114,125)
		local targetTabColorOff = Color3.fromRGB(96,73,78)
		
		-- Icons
		local targetTabIconColorOn = Color3.fromRGB(172,114,125)
		local targetTabIconColorOff = Color3.fromRGB(96,73,78)
		
		local TabBtnHolder_1 = Instance.new("Frame")
		local TabBtn_1 = Instance.new("TextButton")
		local UIPadding_2 = Instance.new("UIPadding")
		local TabBtnImage_1 = Instance.new("ImageLabel")
		local Elements_1 = Instance.new("Frame")
		local Items_1 = Instance.new("ScrollingFrame")
		local UIListLayout_2 = Instance.new("UIListLayout")
		local UIPadding_6 = Instance.new("UIPadding")
		
		TabBtnHolder_1.Name = "TabBtnHolder"
		TabBtnHolder_1.Parent = Tabs_1
		TabBtnHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		TabBtnHolder_1.BackgroundTransparency = 1
		TabBtnHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
		TabBtnHolder_1.BorderSizePixel = 0
		TabBtnHolder_1.Size = UDim2.new(0, 128,0, 25)

		TabBtn_1.Name = "TabBtn"
		TabBtn_1.Parent = TabBtnHolder_1
		TabBtn_1.Active = true
		TabBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		TabBtn_1.BackgroundTransparency = 1
		TabBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
		TabBtn_1.BorderSizePixel = 0
		TabBtn_1.Size = UDim2.new(0, 128,0, 25)
		TabBtn_1.Font = Enum.Font.Gotham
		TabBtn_1.Text = TabName
		TabBtn_1.TextColor3 = Color3.fromRGB(96,73,78)
		TabBtn_1.TextSize = 13
		TabBtn_1.TextXAlignment = Enum.TextXAlignment.Left

		UIPadding_2.Parent = TabBtn_1
		UIPadding_2.PaddingLeft = UDim.new(0,33)

		TabBtnImage_1.Name = "TabBtnImage"
		TabBtnImage_1.Parent = TabBtnHolder_1
		TabBtnImage_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		TabBtnImage_1.BackgroundTransparency = 1
		TabBtnImage_1.BorderColor3 = Color3.fromRGB(0,0,0)
		TabBtnImage_1.BorderSizePixel = 0
		TabBtnImage_1.Position = UDim2.new(0.0703125, 0,0.119999997, 0)
		TabBtnImage_1.Size = UDim2.new(0, 18,0, 18)
		TabBtnImage_1.Image = "rbxassetid://"..TabIcon
		TabBtnImage_1.ImageColor3 = Color3.fromRGB(96,73,78)
		
		Elements_1.Name = "Elements"
		Elements_1.Parent = ElementsHolder_1
		Elements_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		Elements_1.BackgroundTransparency = 1
		Elements_1.BorderColor3 = Color3.fromRGB(0,0,0)
		Elements_1.BorderSizePixel = 0
		Elements_1.Size = UDim2.new(0, 277,0, 308)

		Items_1.Name = "Items"
		Items_1.Parent = Elements_1
		Items_1.Active = true
		Items_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		Items_1.BackgroundTransparency = 1
		Items_1.BorderColor3 = Color3.fromRGB(0,0,0)
		Items_1.BorderSizePixel = 0
		Items_1.Size = UDim2.new(0, 273,0, 301)
		Items_1.ClipsDescendants = true
		Items_1.AutomaticCanvasSize = Enum.AutomaticSize.Y
		Items_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
		Items_1.CanvasPosition = Vector2.new(0, 0)
		Items_1.CanvasSize = UDim2.new(0, 0,0.5, 0)
		Items_1.ElasticBehavior = Enum.ElasticBehavior.Never
		Items_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
		Items_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
		Items_1.ScrollBarImageColor3 = Color3.fromRGB(172,114,125)
		Items_1.ScrollBarImageTransparency = 0
		Items_1.ScrollBarThickness = 4
		Items_1.ScrollingDirection = Enum.ScrollingDirection.Y
		Items_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
		Items_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
		Items_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right
		
		UIListLayout_2.Parent = Items_1
		UIListLayout_2.Padding = UDim.new(0,4)
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

		UIPadding_6.Parent = Items_1
		UIPadding_6.PaddingBottom = UDim.new(0,3)
		UIPadding_6.PaddingTop = UDim.new(0,2)
		
		local tweenInfo = TweenInfo.new(0.2)
		
		-- Text
		local tweenton = TweenService:Create(TabBtn_1, tweenInfo, {TextColor3 = targetTabColorOn})
		local tweentoff = TweenService:Create(TabBtn_1, tweenInfo, {TextColor3 = targetTabColorOff})
		
		-- Icons
		local tweention = TweenService:Create(TabBtnImage_1, tweenInfo, {ImageColor3 = targetTabIconColorOn})
		local tweentioff = TweenService:Create(TabBtnImage_1, tweenInfo, {ImageColor3 = targetTabIconColorOff})

		if first then
			first = false
			Elements_1.Visible = true
			currentTabIcon = TabBtnImage_1
			currentTab = TabBtn_1 -- Set the first tab as the current tab
			tweenton:Play()
			tweention:Play()
		else
			Elements_1.Visible = false
		end

		TabBtn_1.MouseButton1Click:Connect(function()
			if currentTabIcon then
				tweentioff:Play()
			end
			
			if currentTab then
				tweentoff:Play() -- Turn off color for the previous tab
			end

			tweenton:Play() -- Turn on color for the new tab
			tweention:Play()
			
			if currentTabIcon and currentTabIcon ~= TabBtnImage_1 then
				currentTabIcon.ImageColor3 = targetTabIconColorOff -- Set the color of the previously selected tab to off
			end
			
			if currentTab and currentTab ~= TabBtn_1 then
				currentTab.TextColor3 = targetTabColorOff
			end

			currentTabIcon = TabBtnImage_1
			currentTab = TabBtn_1 -- Update the current tab
			for i, v in next, ElementsHolder_1:GetChildren() do
				v.Visible = false
			end

			Elements_1.Visible = true
		end)
		
		local Elements = {}
		function Elements:CreateSection(SecText)
			local Section_1 = Instance.new("Frame")
			local SectionText_1 = Instance.new("TextLabel")
			local UIPadding_8 = Instance.new("UIPadding")
			
			Section_1.Name = "Section"
			Section_1.Parent = Items_1
			Section_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			Section_1.BackgroundTransparency = 1
			Section_1.BorderColor3 = Color3.fromRGB(0,0,0)
			Section_1.BorderSizePixel = 0
			Section_1.Position = UDim2.new(0, 0,0.314189196, 0)
			Section_1.Size = UDim2.new(0, 262,0, 21)

			SectionText_1.Name = "SectionText"
			SectionText_1.Parent = Section_1
			SectionText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			SectionText_1.BackgroundTransparency = 1
			SectionText_1.BorderColor3 = Color3.fromRGB(0,0,0)
			SectionText_1.BorderSizePixel = 0
			SectionText_1.Size = UDim2.new(0, 262,0, 21)
			SectionText_1.Font = Enum.Font.Gotham
			SectionText_1.Text = SecText
			SectionText_1.TextColor3 = Color3.fromRGB(96,73,78)
			SectionText_1.TextSize = 13
			SectionText_1.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_8.Parent = SectionText_1
			UIPadding_8.PaddingLeft = UDim.new(0,9)
		end
		function Elements:CreateLabel(LabText)
			local Label_1 = Instance.new("Frame")
			local LabelText_1 = Instance.new("TextLabel")
			
			Label_1.Name = "Label"
			Label_1.Parent = Items_1
			Label_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			Label_1.BackgroundTransparency = 1
			Label_1.BorderColor3 = Color3.fromRGB(0,0,0)
			Label_1.BorderSizePixel = 0
			Label_1.Position = UDim2.new(0, 0,0.314189196, 0)
			Label_1.Size = UDim2.new(0, 262,0, 21)

			LabelText_1.Name = "LabelText"
			LabelText_1.Parent = Label_1
			LabelText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			LabelText_1.BackgroundTransparency = 1
			LabelText_1.BorderColor3 = Color3.fromRGB(0,0,0)
			LabelText_1.BorderSizePixel = 0
			LabelText_1.Size = UDim2.new(0, 262,0, 21)
			LabelText_1.Font = Enum.Font.Gotham
			LabelText_1.Text = LabText
			LabelText_1.TextColor3 = Color3.fromRGB(96,73,78)
			LabelText_1.TextSize = 11
		end
		function Elements:CreateButton(ButText,Callback)
			
			Callback = Callback or function()
			end

			local targetButtonColorOn = Color3.fromRGB(224, 172, 182)
			local targetButtonColorOff = Color3.fromRGB(172,114,125)
			
			local Button_1 = Instance.new("Frame")
			local ButtonBtn_1 = Instance.new("TextButton")
			
			Button_1.Name = "Button"
			Button_1.Parent = Items_1
			Button_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			Button_1.BackgroundTransparency = 1
			Button_1.BorderColor3 = Color3.fromRGB(0,0,0)
			Button_1.BorderSizePixel = 0
			Button_1.Size = UDim2.new(0, 262,0, 27)

			ButtonBtn_1.Name = "ButtonBtn"
			ButtonBtn_1.Parent = Button_1
			ButtonBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			ButtonBtn_1.BackgroundTransparency = 1
			ButtonBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
			ButtonBtn_1.BorderSizePixel = 0
			ButtonBtn_1.Size = UDim2.new(0, 262,0, 27)
			ButtonBtn_1.Font = Enum.Font.Gotham
			ButtonBtn_1.Text = ButText
			ButtonBtn_1.TextColor3 = Color3.fromRGB(172,114,125)
			ButtonBtn_1.TextSize = 13
			
			local tweenInfo = TweenInfo.new(0.2)

			local tweenbon = TweenService:Create(ButtonBtn_1, tweenInfo, {TextColor3 = targetButtonColorOn})
			local tweenboff = TweenService:Create(ButtonBtn_1, tweenInfo, {TextColor3 = targetButtonColorOff})

			ButtonBtn_1.MouseButton1Click:Connect(function()
				tweenbon:Play()
				wait(0.1)
				tweenboff:Play()
				Callback()
			end)
		end
		return Elements
	end
	return Tabs
end

local Window = Library:CreateWindow("PSX")
local Tab1 = Window:CreateTab("First","15606415939")
local Tab2 = Window:CreateTab("Second","15606401129")

Tab2:CreateSection("Section Here")
Tab2:CreateLabel("Label Here")
Tab2:CreateButton("Button Here",function()
	print("test!")
end)

return Library


