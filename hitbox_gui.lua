-- 💫 XenC Hitbox GUI | Made by XenC
-- 🎯 GUI: Nền đen, viền trắng, bật xanh, tắt đỏ
-- 🧠 Chức năng: Tăng hitbox cho người chơi khác (phóng to vùng đánh)

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ToggleOn = Instance.new("TextButton")
local ToggleOff = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

Frame.Size = UDim2.new(0, 150, 0, 80)
Frame.Position = UDim2.new(0.4, 0, 0.4, 0)
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
Frame.Parent = ScreenGui

ToggleOn.Size = UDim2.new(0, 60, 0, 30)
ToggleOn.Position = UDim2.new(0, 10, 0, 25)
ToggleOn.Text = "Bật"
ToggleOn.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ToggleOn.Parent = Frame

ToggleOff.Size = UDim2.new(0, 60, 0, 30)
ToggleOff.Position = UDim2.new(0, 80, 0, 25)
ToggleOff.Text = "Tắt"
ToggleOff.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ToggleOff.Parent = Frame

-- ⚙️ Cấu hình hitbox
local hitboxSize = Vector3.new(8, 8, 8) -- kích thước hitbox khi bật
local normalSize = Vector3.new(2, 2, 1) -- kích thước bình thường

local enabled = false
local players = game:GetService("Players")

function setHitboxSize(size)
    for _, v in pairs(players:GetPlayers()) do
        if v ~= players.LocalPlayer then
            pcall(function()
                v.Character.HumanoidRootPart.Size = size
                v.Character.HumanoidRootPart.Transparency = 0.8
                v.Character.HumanoidRootPart.Material = Enum.Material.Neon
                v.Character.HumanoidRootPart.Color = Color3.fromRGB(255, 0, 0)
                v.Character.HumanoidRootPart.CanCollide = false
            end)
        end
    end
end

ToggleOn.MouseButton1Click:Connect(function()
    if enabled then return end
    enabled = true
    print("✅ Hitbox bật!")
    while enabled do
        setHitboxSize(hitboxSize)
        wait(1)
    end
end)

ToggleOff.MouseButton1Click:Connect(function()
    enabled = false
    print("❌ Hitbox tắt!")
    setHitboxSize(normalSize)
end)
