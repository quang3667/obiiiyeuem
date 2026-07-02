local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.Position = UDim2.new(0.5, 0, -0.025, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "Banana hub kaitun"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20.00

UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(131.00000739097595, 181.0000044107437, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(224.000001847744, 162.00000554323196, 255))
}
UIGradient.Parent = TextLabel

local ScreenGui = Instance.new("ScreenGui");
local DropShadowHolder = Instance.new("Frame");
local DropShadow = Instance.new("ImageLabel");
local Main = Instance.new("Frame");
local UICorner = Instance.new("UICorner");
local UIStroke = Instance.new("UIStroke");
local T = Instance.new("TextLabel");
local UIGradient1 = Instance.new("UIGradient");

ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game:GetService("Players").LocalPlayer.PlayerGui

DropShadowHolder.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadowHolder.BackgroundTransparency = 1
DropShadowHolder.BorderSizePixel = 0
DropShadowHolder.Position = UDim2.new(0.5, 0, 0.1, 0)
DropShadowHolder.Size = UDim2.new(0, 500, 0, 68)
DropShadowHolder.ZIndex = 0
DropShadowHolder.Name = "DropShadowHolder"
DropShadowHolder.Parent = ScreenGui

DropShadow.Image = "rbxassetid://110250504662479"
DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.ImageTransparency = 0.5
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow.Size = UDim2.new(1, 47, 1, 47)
DropShadow.ZIndex = 0
DropShadow.Name = "DropShadow"
DropShadow.Parent = DropShadowHolder

Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(15, 15, 22) -- Chỉnh nền tối hơn một chút cho hợp với viền cam
Main.BackgroundTransparency = 0.2 -- Giảm độ trong suốt để nhìn rõ màu nền tối giống ảnh gốc
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(1, -47, 1, -47)
Main.Name = "Main"
Main.Parent = DropShadow

UICorner.CornerRadius = UDim.new(0, 4) -- Bo góc nhẹ giống viền vuông của ảnh
UICorner.Parent = Main

-- PHẦN ĐÃ CHỈNH SỬA: Viền cam sắc nét giống hệt trong ảnh image_6ccae2.png
UIStroke.Color = Color3.fromRGB(255, 145, 0) -- Màu cam đặc trưng của Banana
UIStroke.Thickness = 2.0 -- Độ dày viền vừa phải
UIStroke.Parent = Main

T.Font = Enum.Font.GothamBold
T.Text = "Banana Kaitun"
T.TextColor3 = Color3.fromRGB(255, 255, 255)
T.TextSize = 16.5
T.TextYAlignment = Enum.TextYAlignment.Bottom
T.AnchorPoint = Vector2.new(0.5, 0)
T.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
T.BackgroundTransparency = 0.9990000128746033
T.BorderColor3 = Color3.fromRGB(0, 0, 0)
T.BorderSizePixel = 0
T.Position = UDim2.new(0.5, 0, 0, 15)
T.Size = UDim2.new(0, 500, 0, 18)
T.Name = "Top"
T.Parent = Main

UIGradient1.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(131.00000739097595, 181.0000044107437, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(224.000001847744, 162.00000554323196, 255))
}
UIGradient1.Parent = T

T.Size = UDim2.new(0, T.TextBounds.X, 0, 18)
if T.Size.X.Offset then
	DropShadowHolder.Size = UDim2.new(0, T.TextBounds.X + 68, 0, 48)
end
T:GetPropertyChangedSignal("Text"):Connect(function()
	T.Size = UDim2.new(0, T.TextBounds.X, 0, 18)
	if T.Size.X.Offset then
		DropShadowHolder.Size = UDim2.new(0, T.TextBounds.X + 68, 0, 48)
	end
end)

function SetTitle(v)
	T.Text = v
end

local NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Notification-Library/Main/Library.lua"))()

NotificationLibrary:SendNotification("Warning", "Kaitun loading....", 10)
NotificationLibrary:SendNotification("Warning", "thank you use Banana hub Kaitun", 10)

loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/l/73mkp0aqyfo4ypy8hvl0nz10lq49fey5.lua"))()

repeat
    wait()
until game:IsLoaded()
if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
end
game.StarterGui:SetCore(
    "SendNotification",
    {
        Title = "Fix Lag By KimP",
        Text = "Loading..........",
        Duration = 10
    })

local function FPSBooster()
    local decalsyeeted = true
    local g = game
    local w = g.Workspace
    local l = g.Lighting
    local t = w.Terrain
    
    sethiddenproperty(l, "Technology", Enum.Technology.Compatibility)
    sethiddenproperty(t, "Decoration", false)
    
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 0
    
    l.GlobalShadows = false
    l.FogEnd = 9e9
    l.Brightness = 0
    
    settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
    
    for _, v in pairs(g:GetDescendants()) do
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
            v.Material = Enum.Material.Plastic
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
        elseif v:IsA("MeshPart") then
            v.Material = Enum.Material.Plastic
            v.Reflectance = 0
        end
    end
    
    for _, e in pairs(l:GetChildren()) do
        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
            e.Enabled = false
        end
    end
end

FPSBooster()
