local nekolib = {}
function nekolib:window(bind)
    local window = {}
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    ScreenGui.Parent = game.CoreGui
    UIListLayout.Parent = Frame
    UIListLayout.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    UIListLayout.Padding = UDim.new(0, 25)
    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame.BackgroundTransparency = 1.000
    Frame.Position = UDim2.new(0.0134890554, 0, 0, 0)
    Frame.Size = UDim2.new(0, 1893, 0, 687)
    local iu = loadstring(game:HttpGet("https://raw.githubusercontent.com/d3ltaX/internalUi/main/main.lua"))()
    iu:bind(ScreenGui,Enum.KeyCode.RightAlt)
    function window:section(name)
        local section = {} 
        local TextLabel = Instance.new("TextLabel")
        local Frame_2 = Instance.new("Frame")
        local Frame_3 = Instance.new("Frame")
        local UIListLayout_2 = Instance.new("UIListLayout")
        TextLabel.Parent = Frame
        TextLabel.BackgroundColor3 = Color3.fromRGB(31, 11, 17)
        TextLabel.Position = UDim2.new(0.223032832, 0, 0.24243854, 0)
        TextLabel.Size = UDim2.new(0, 187, 0, 61)
        TextLabel.ZIndex = 5
        TextLabel.Font = Enum.Font.Code
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextSize = 24.000
        TextLabel.TextWrapped = true
        Frame_2.Parent = TextLabel
        Frame_2.BackgroundColor3 = Color3.fromRGB(41, 11, 17)
        Frame_2.BorderColor3 = Color3.fromRGB(31, 11, 17)
        Frame_2.BorderSizePixel = 3
        Frame_2.Position = UDim2.new(0, 0, 0.755286574, 0)
        Frame_2.Size = UDim2.new(0, 187, 0, 417)

        Frame_3.Parent = Frame_2
        Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Frame_3.BackgroundTransparency = 1.000
        Frame_3.Position = UDim2.new(-0.00428388454, 0, 0.0594864525, 0)
        Frame_3.Size = UDim2.new(0, 187, 0, 395)

        UIListLayout_2.Parent = Frame_3
        UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout_2.Padding = UDim.new(0, 5)
        function section:toggle(togg, callback)
            local UICorner = Instance.new("UICorner")
            local ToggleButton = Instance.new("TextButton")
            ToggleButton.Name = "ToggleButton"
            ToggleButton.Parent = Frame_3
            ToggleButton.BackgroundColor3 = Color3.fromRGB(31, 11, 17)
            ToggleButton.Position = UDim2.new(0.107955851, 0, 0, 0)
            ToggleButton.Size = UDim2.new(0, 138, 0, 30)
            ToggleButton.Font = Enum.Font.Code
            ToggleButton.Text = togg
            ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            ToggleButton.TextScaled = true
            ToggleButton.TextSize = 14.000
            ToggleButton.TextWrapped = true
    
            UICorner.Parent = ToggleButton
            toggled = false
            ToggleButton.MouseButton1Down:Connect(function()
                if toggled then
                toggled = false
                ToggleButton.BackgroundColor3 = Color3.fromRGB(31, 11, 17)
                else
                    ToggleButton.BackgroundColor3 = Color3.fromRGB(31, 41, 17)
                toggled = true
                end
                callback(toggled)
            end)
        end
        return section
    end
    function section:minisection(title)
        local TextLabel = Instance.new("TextLabel")



        TextLabel.Parent = Frame_3
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.Position = UDim2.new(0.0481283404, 0, 0.0886075944, 0)
        TextLabel.Size = UDim2.new(0, 178, 0, 20)
        TextLabel.Font = Enum.Font.Code
        TextLabel.Text = title
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextScaled = true
        TextLabel.TextSize = 14.000
        TextLabel.TextWrapped = true
    end
    function section:textbox(title,callback)
        local TextButton = Instance.new("TextButton")
        local UICorner = Instance.new("UICorner")
        local TextBox = Instance.new("TextBox")
        local UICorner_2 = Instance.new("UICorner")
        
        --Properties:
        
        TextButton.Parent = Frame_3
        TextButton.BackgroundColor3 = Color3.fromRGB(31, 11, 17)
        TextButton.Position = UDim2.new(0, 0, 0.774193525, 0)
        TextButton.Size = UDim2.new(0, 134, 0, 20)
        TextButton.Font = Enum.Font.Code
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 14.000
        
        UICorner.Parent = TextButton
        
        TextBox.Parent = TextButton
        TextBox.BackgroundColor3 = Color3.fromRGB(31, 11, 17)
        TextBox.Position = UDim2.new(0, 0, 1, 0)
        TextBox.Size = UDim2.new(0, 133, 0, 40)
        TextBox.Font = Enum.Font.SourceSans
        TextBox.Text = ""
        TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextBox.TextSize = 14.000
        TextButton.Text = title
        UICorner_2.Parent = TextBox
    TextButton.MouseButton1Down:Connect(function()
            callback(TextBox.Text)
     end)
    end
    function section:button(title,callback)
        local UICorner = Instance.new("UICorner")
        local ToggleButton = Instance.new("TextButton")
        ToggleButton.Name = "TextButton"
        ToggleButton.Parent = Frame_3
        ToggleButton.BackgroundColor3 = Color3.fromRGB(31, 11, 17)
        ToggleButton.Position = UDim2.new(0.107955851, 0, 0, 0)
        ToggleButton.Size = UDim2.new(0, 138, 0, 30)
        ToggleButton.Font = Enum.Font.Code
        ToggleButton.Text = title
        ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        ToggleButton.TextScaled = true
        ToggleButton.TextSize = 14.000
        ToggleButton.TextWrapped = true
        ToggleButton.MouseButton1Down:Connect(callback)
        UICorner.Parent = ToggleButton
    end
    return window
end
return nekolib
