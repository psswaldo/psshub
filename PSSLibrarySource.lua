-- By PSS Waldo, dont steal/skid/copy/share!

local PSSLibrary = Instance.new("ScreenGui")
local Main_1 = Instance.new("Frame")
local UICorner_1 = Instance.new("UICorner")
local TopBar_1 = Instance.new("Frame")
local Title_1 = Instance.new("TextLabel")
local UIPadding_1 = Instance.new("UIPadding")
local CloseBtn_1 = Instance.new("TextButton")
local SideBar_1 = Instance.new("Frame")
local Tabs_1 = Instance.new("ScrollingFrame")
local TabBtnHolder_1 = Instance.new("Frame")
local TabBtn_1 = Instance.new("TextButton")
local UIPadding_2 = Instance.new("UIPadding")
local TabBtnImage_1 = Instance.new("ImageLabel")
local UIListLayout_1 = Instance.new("UIListLayout")
local UIPadding_3 = Instance.new("UIPadding")
local TabBtnHolder_2 = Instance.new("Frame")
local TabBtn_2 = Instance.new("TextButton")
local UIPadding_4 = Instance.new("UIPadding")
local TabBtnImage_2 = Instance.new("ImageLabel")
local ElementsHolder_1 = Instance.new("Frame")
local Elements_1 = Instance.new("Frame")
local Items_1 = Instance.new("ScrollingFrame")
local Button_1 = Instance.new("Frame")
local ButtonBtn_1 = Instance.new("TextButton")
local Toggle_1 = Instance.new("Frame")
local ToggleText_1 = Instance.new("TextLabel")
local UIPadding_5 = Instance.new("UIPadding")
local ToggleHolder_1 = Instance.new("TextButton")
local Toggler_1 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIListLayout_2 = Instance.new("UIListLayout")
local UIPadding_6 = Instance.new("UIPadding")
local Toggle_2 = Instance.new("Frame")
local ToggleText_2 = Instance.new("TextLabel")
local UIPadding_7 = Instance.new("UIPadding")
local ToggleHolder_2 = Instance.new("TextButton")
local Toggler_2 = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Label_1 = Instance.new("Frame")
local LabelText_1 = Instance.new("TextLabel")
local Section_1 = Instance.new("Frame")
local SectionText_1 = Instance.new("TextLabel")
local UIPadding_8 = Instance.new("UIPadding")
local Slider_1 = Instance.new("Frame")
local SliderText_1 = Instance.new("TextLabel")
local UIPadding_9 = Instance.new("UIPadding")
local SliderValue_1 = Instance.new("TextLabel")
local UIPadding_10 = Instance.new("UIPadding")
local SliderHolder_1 = Instance.new("Frame")
local SliderBtn_1 = Instance.new("TextButton")
local SliderInner_1 = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local UICorner_5 = Instance.new("UICorner")

-- Properties:
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
Title_1.Text = "PSS Hub | Game"
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
TabBtn_1.Text = "Home"
TabBtn_1.TextColor3 = Color3.fromRGB(172,114,125)
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
TabBtnImage_1.Image = "rbxassetid://15606401129"
TabBtnImage_1.ImageColor3 = Color3.fromRGB(172,114,125)

UIListLayout_1.Parent = Tabs_1
UIListLayout_1.Padding = UDim.new(0,5)
UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder

UIPadding_3.Parent = Tabs_1
UIPadding_3.PaddingBottom = UDim.new(0,2)
UIPadding_3.PaddingTop = UDim.new(0,2)

TabBtnHolder_2.Name = "TabBtnHolder"
TabBtnHolder_2.Parent = Tabs_1
TabBtnHolder_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
TabBtnHolder_2.BackgroundTransparency = 1
TabBtnHolder_2.BorderColor3 = Color3.fromRGB(0,0,0)
TabBtnHolder_2.BorderSizePixel = 0
TabBtnHolder_2.Size = UDim2.new(0, 128,0, 25)

TabBtn_2.Name = "TabBtn"
TabBtn_2.Parent = TabBtnHolder_2
TabBtn_2.Active = true
TabBtn_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
TabBtn_2.BackgroundTransparency = 1
TabBtn_2.BorderColor3 = Color3.fromRGB(0,0,0)
TabBtn_2.BorderSizePixel = 0
TabBtn_2.Size = UDim2.new(0, 128,0, 25)
TabBtn_2.Font = Enum.Font.Gotham
TabBtn_2.Text = "Settings"
TabBtn_2.TextColor3 = Color3.fromRGB(96,73,78)
TabBtn_2.TextSize = 13
TabBtn_2.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_4.Parent = TabBtn_2
UIPadding_4.PaddingLeft = UDim.new(0,33)

TabBtnImage_2.Name = "TabBtnImage"
TabBtnImage_2.Parent = TabBtnHolder_2
TabBtnImage_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
TabBtnImage_2.BackgroundTransparency = 1
TabBtnImage_2.BorderColor3 = Color3.fromRGB(0,0,0)
TabBtnImage_2.BorderSizePixel = 0
TabBtnImage_2.Position = UDim2.new(0.0703125, 0,0.119999997, 0)
TabBtnImage_2.Size = UDim2.new(0, 18,0, 18)
TabBtnImage_2.Image = "rbxassetid://15606415939"
TabBtnImage_2.ImageColor3 = Color3.fromRGB(96,73,78)

ElementsHolder_1.Name = "ElementsHolder"
ElementsHolder_1.Parent = Main_1
ElementsHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
ElementsHolder_1.BackgroundTransparency = 1
ElementsHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
ElementsHolder_1.BorderSizePixel = 0
ElementsHolder_1.Position = UDim2.new(0.326034069, 0,0.0967741907, 0)
ElementsHolder_1.Size = UDim2.new(0, 277,0, 308)

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
ButtonBtn_1.Text = "Button"
ButtonBtn_1.TextColor3 = Color3.fromRGB(172,114,125)
ButtonBtn_1.TextSize = 13

Toggle_1.Name = "Toggle"
Toggle_1.Parent = Items_1
Toggle_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
Toggle_1.BackgroundTransparency = 1
Toggle_1.BorderColor3 = Color3.fromRGB(0,0,0)
Toggle_1.BorderSizePixel = 0
Toggle_1.Size = UDim2.new(0, 262,0, 27)

ToggleText_1.Name = "ToggleText"
ToggleText_1.Parent = Toggle_1
ToggleText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
ToggleText_1.BackgroundTransparency = 1
ToggleText_1.BorderColor3 = Color3.fromRGB(0,0,0)
ToggleText_1.BorderSizePixel = 0
ToggleText_1.Size = UDim2.new(0, 192,0, 27)
ToggleText_1.Font = Enum.Font.Gotham
ToggleText_1.Text = "Toggle Off"
ToggleText_1.TextColor3 = Color3.fromRGB(172,114,125)
ToggleText_1.TextSize = 13
ToggleText_1.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_5.Parent = ToggleText_1
UIPadding_5.PaddingLeft = UDim.new(0,9)

ToggleHolder_1.Name = "ToggleHolder"
ToggleHolder_1.Parent = Toggle_1
ToggleHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
ToggleHolder_1.BackgroundTransparency = 1
ToggleHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
ToggleHolder_1.BorderSizePixel = 0
ToggleHolder_1.Position = UDim2.new(0.767175555, 0,0.0740740746, 0)
ToggleHolder_1.Size = UDim2.new(0, 60,0, 22)
ToggleHolder_1.Text = ""
ToggleHolder_1.TextColor3 = Color3.fromRGB(27,42,53)
ToggleHolder_1.TextSize = 8

Toggler_1.Name = "Toggler"
Toggler_1.Parent = ToggleHolder_1
Toggler_1.BackgroundColor3 = Color3.fromRGB(96,73,78)
Toggler_1.BorderColor3 = Color3.fromRGB(0,0,0)
Toggler_1.BorderSizePixel = 0
Toggler_1.Position = UDim2.new(0.516666651, 0,0, 0)
Toggler_1.Size = UDim2.new(0, 30,0, 22)

UICorner_2.Parent = Toggler_1

UIListLayout_2.Parent = Items_1
UIListLayout_2.Padding = UDim.new(0,4)
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

UIPadding_6.Parent = Items_1
UIPadding_6.PaddingBottom = UDim.new(0,3)
UIPadding_6.PaddingTop = UDim.new(0,2)

Toggle_2.Name = "Toggle"
Toggle_2.Parent = Items_1
Toggle_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
Toggle_2.BackgroundTransparency = 1
Toggle_2.BorderColor3 = Color3.fromRGB(0,0,0)
Toggle_2.BorderSizePixel = 0
Toggle_2.Size = UDim2.new(0, 262,0, 27)

ToggleText_2.Name = "ToggleText"
ToggleText_2.Parent = Toggle_2
ToggleText_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
ToggleText_2.BackgroundTransparency = 1
ToggleText_2.BorderColor3 = Color3.fromRGB(0,0,0)
ToggleText_2.BorderSizePixel = 0
ToggleText_2.Size = UDim2.new(0, 192,0, 27)
ToggleText_2.Font = Enum.Font.Gotham
ToggleText_2.Text = "Toggle On"
ToggleText_2.TextColor3 = Color3.fromRGB(172,114,125)
ToggleText_2.TextSize = 13
ToggleText_2.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_7.Parent = ToggleText_2
UIPadding_7.PaddingLeft = UDim.new(0,9)

ToggleHolder_2.Name = "ToggleHolder"
ToggleHolder_2.Parent = Toggle_2
ToggleHolder_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
ToggleHolder_2.BackgroundTransparency = 1
ToggleHolder_2.BorderColor3 = Color3.fromRGB(0,0,0)
ToggleHolder_2.BorderSizePixel = 0
ToggleHolder_2.Position = UDim2.new(0.76700002, 0,0.074000001, 0)
ToggleHolder_2.Size = UDim2.new(0, 60,0, 22)
ToggleHolder_2.Text = ""
ToggleHolder_2.TextColor3 = Color3.fromRGB(27,42,53)
ToggleHolder_2.TextSize = 8

Toggler_2.Name = "Toggler"
Toggler_2.Parent = ToggleHolder_2
Toggler_2.BackgroundColor3 = Color3.fromRGB(146,112,118)
Toggler_2.BorderColor3 = Color3.fromRGB(0,0,0)
Toggler_2.BorderSizePixel = 0
Toggler_2.Size = UDim2.new(0, 30,0, 22)

UICorner_3.Parent = Toggler_2

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
LabelText_1.Text = "Label"
LabelText_1.TextColor3 = Color3.fromRGB(96,73,78)
LabelText_1.TextSize = 12

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
SectionText_1.Text = "Section"
SectionText_1.TextColor3 = Color3.fromRGB(96,73,78)
SectionText_1.TextSize = 13
SectionText_1.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_8.Parent = SectionText_1
UIPadding_8.PaddingLeft = UDim.new(0,9)

Slider_1.Name = "Slider"
Slider_1.Parent = Items_1
Slider_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
Slider_1.BackgroundTransparency = 1
Slider_1.BorderColor3 = Color3.fromRGB(0,0,0)
Slider_1.BorderSizePixel = 0
Slider_1.Position = UDim2.new(0, 0,0.483108103, 0)
Slider_1.Size = UDim2.new(0, 262,0, 43)

SliderText_1.Name = "SliderText"
SliderText_1.Parent = Slider_1
SliderText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
SliderText_1.BackgroundTransparency = 1
SliderText_1.BorderColor3 = Color3.fromRGB(0,0,0)
SliderText_1.BorderSizePixel = 0
SliderText_1.Size = UDim2.new(0, 200,0, 21)
SliderText_1.Font = Enum.Font.Gotham
SliderText_1.Text = "Slider"
SliderText_1.TextColor3 = Color3.fromRGB(172,114,125)
SliderText_1.TextSize = 13
SliderText_1.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_9.Parent = SliderText_1
UIPadding_9.PaddingLeft = UDim.new(0,9)

SliderValue_1.Name = "SliderValue"
SliderValue_1.Parent = Slider_1
SliderValue_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
SliderValue_1.BackgroundTransparency = 1
SliderValue_1.BorderColor3 = Color3.fromRGB(0,0,0)
SliderValue_1.BorderSizePixel = 0
SliderValue_1.Position = UDim2.new(0.732824445, 0,0, 0)
SliderValue_1.Size = UDim2.new(0, 70,0, 21)
SliderValue_1.Font = Enum.Font.Gotham
SliderValue_1.Text = "33"
SliderValue_1.TextColor3 = Color3.fromRGB(172,114,125)
SliderValue_1.TextSize = 13
SliderValue_1.TextXAlignment = Enum.TextXAlignment.Right

UIPadding_10.Parent = SliderValue_1
UIPadding_10.PaddingRight = UDim.new(0,3)

SliderHolder_1.Name = "SliderHolder"
SliderHolder_1.Parent = Slider_1
SliderHolder_1.BackgroundColor3 = Color3.fromRGB(96,73,78)
SliderHolder_1.BackgroundTransparency = 0.8999999761581421
SliderHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
SliderHolder_1.BorderSizePixel = 0
SliderHolder_1.Position = UDim2.new(0.0340000018, 0,0.569999993, 0)
SliderHolder_1.Size = UDim2.new(0, 250,0, 13)

SliderBtn_1.Name = "SliderBtn"
SliderBtn_1.Parent = SliderHolder_1
SliderBtn_1.Active = true
SliderBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
SliderBtn_1.BackgroundTransparency = 1
SliderBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
SliderBtn_1.BorderSizePixel = 0
SliderBtn_1.Size = UDim2.new(0, 250,0, 13)
SliderBtn_1.ClipsDescendants = true
SliderBtn_1.Font = Enum.Font.SourceSans
SliderBtn_1.Text = ""
SliderBtn_1.TextSize = 14

SliderInner_1.Name = "SliderInner"
SliderInner_1.Parent = SliderBtn_1
SliderInner_1.BackgroundColor3 = Color3.fromRGB(78,65,67)
SliderInner_1.BorderColor3 = Color3.fromRGB(0,0,0)
SliderInner_1.BorderSizePixel = 0
SliderInner_1.Size = UDim2.new(0, 88,0, 13)

UICorner_4.Parent = SliderInner_1

UICorner_5.Parent = SliderHolder_1
