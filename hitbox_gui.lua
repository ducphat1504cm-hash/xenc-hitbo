-- 💫 XenC Hitbox GUI | Màu đen, viền trắng, bật xanh, tắt đỏ
-- ⚙️ Made by XenC

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

ToggleOn.MouseButton1Click:Connect(function()
    print("✅ Đã bật Hitbox!")
    -- Chèn code bật hitbox ở đây
end)

ToggleOff.MouseButton1Click:Connect(function()
    print("❌ Đã tắt Hitbox!")
    -- Chèn code tắt hitbox ở đây
end)
