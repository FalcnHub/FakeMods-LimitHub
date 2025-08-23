--// Main Script Loader
-- Shows KRNL required message if using Delta

-- your real Lua
local function runMyScript()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FalcnHub/FakeMod-LimitHub/refs/heads/main/LimitHub_Luamor_E.lua"))()
end

-- detect executor
local executorName = (identifyexecutor and identifyexecutor()) or "Unknown"

if executorName == "Delta" then
    -- Services
    local CoreGui = game:GetService("CoreGui")
    local Lighting = game:GetService("Lighting")

    -- ScreenGui
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "KRNL_UI"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = CoreGui

    -- Blur effect
    local blur = Instance.new("BlurEffect")
    blur.Size = 18
    blur.Name = "KRNL_Blur"
    blur.Parent = Lighting

    -- Main Frame
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 400, 0, 220) -- larger size
    Frame.Position = UDim2.new(0.5, -200, 0.5, -110) -- centered
    Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Frame.BorderSizePixel = 0
    Frame.Active = true
    Frame.Draggable = true
    Frame.Parent = ScreenGui

    -- Title
    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, 0, 0, 60)
    Title.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Title.BorderSizePixel = 0
    Title.Text = "⚠ KRNL Required ⚠"
    Title.Font = Enum.Font.SourceSansBold
    Title.TextSize = 28
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.Parent = Frame

    -- Info Text
    local Info = Instance.new("TextLabel")
    Info.Size = UDim2.new(1, -20, 0, 90)
    Info.Position = UDim2.new(0, 10, 0, 70)
    Info.BackgroundTransparency = 1
    Info.Text = "KRNL is required to execute the actual script.\nPlease download it below:"
    Info.Font = Enum.Font.SourceSans
    Info.TextSize = 20
    Info.TextWrapped = true
    Info.TextColor3 = Color3.fromRGB(255, 255, 255)
    Info.Parent = Frame

    -- Button
    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(0.6, 0, 0.2, 0)
    Button.Position = UDim2.new(0.2, 0, 0.75, 0)
    Button.BackgroundColor3 = Color3.fromRGB(50, 120, 255)
    Button.Text = "Download KRNL"
    Button.Font = Enum.Font.SourceSansBold
    Button.TextSize = 22
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.Parent = Frame

    Button.MouseButton1Click:Connect(function()
        setclipboard("https://wearedevs.net/d/Krnl")
        Button.Text = "Link Copied!"
        wait(2)
        Button.Text = "Download KRNL"
    end)
else
    -- not Delta → run your Lua
    runMyScript()
end
