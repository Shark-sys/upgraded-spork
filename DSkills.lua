-- made by gg

local Gui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local SaveT = Instance.new("TextButton")
local LoadT = Instance.new("TextButton")

Gui.Parent = game:GetService("CoreGui")
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = Gui
main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
main.Size = UDim2.new(0, 150, 0, 128)
main.Active = true
main.Draggable = true

SaveT.Name = "SaveT"
SaveT.Parent = main
SaveT.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
SaveT.Position = UDim2.new(0.0597826242, 0, 0.119906127, 0)
SaveT.Size = UDim2.new(0, 55, 0, 50)
SaveT.Font = Enum.Font.SourceSans
SaveT.Text = "Save tool"
SaveT.TextColor3 = Color3.fromRGB(0, 0, 0)
SaveT.TextScaled = true
SaveT.TextSize = 14.000
SaveT.TextWrapped = true

LoadT.Name = "LoadT"
LoadT.Parent = main
LoadT.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
LoadT.Position = UDim2.new(0.55251956, 0, 0.11990683, 0)
LoadT.Size = UDim2.new(0, 58, 0, 50)
LoadT.Font = Enum.Font.SourceSans
LoadT.Text = "Load tool"
LoadT.TextColor3 = Color3.fromRGB(0, 0, 0)
LoadT.TextScaled = true
LoadT.TextSize = 14.000
LoadT.TextWrapped = true

SaveT.MouseButton1Click:connect(function()
    -- EQUIP TOOL BEFORE EXECUTING THIS SCRIPT
    -- save tool
    LP = game:GetService("Players").LocalPlayer

    for i,v in pairs(LP.Character:GetDescendants()) do
        if v:IsA("Tool") then
            v.Parent = LP
        end
    end
end)

LoadT.MouseButton1Click:connect(function()
    -- load tool (Use after using save tool script)
    LP = game:GetService("Players").LocalPlayer

    for i,v in pairs(LP:GetChildren()) do
        if v:IsA("Tool") then
            v.Parent = LP.Backpack
        end
    end
end)