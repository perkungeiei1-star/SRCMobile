    local Players = game:GetService("Players")
    local TweenService = game:GetService("TweenService")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")

    local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    local Window = Fluent:CreateWindow({
        Title = "BenJaMinZ Hub",
        SubTitle = "Made by BenJaMinZ",
        TabWidth = 200,
        Size = UDim2.fromOffset(580,460),
        Acrylic = false,
        Theme = "Dark",
        MinimizeKey = Enum.KeyCode.RightControl
    })
    local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
    local player = Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local hrp = character:WaitForChild("HumanoidRootPart")

    local function initCharacter(char)
        character = char
        humanoid = character:WaitForChild("Humanoid")
        hrp = character:WaitForChild("HumanoidRootPart")
    end

    local TabMain = Window:AddTab({ Title = "Main", Icon = "hammer" })
    local TabTeleportAFK = Window:AddTab({ Title = "Teleport AFK", Icon = "shield" })
    local TabTeleportIsland = Window:AddTab({ Title = "Teleport Island", Icon = "globe" })
    local TabSniper = Window:AddTab({ Title = "Sniper Box and Compass", Icon = "compass" })
    local TabSniperFruit = Window:AddTab({ Title = "Sniper Devil Fruit", Icon = "apple" })
    local TabDropBox = Window:AddTab({ Title = "Only Box", Icon = "box" })
    local TabSpecter = Window:AddTab({ Title = "Specter Player", Icon = "eye" })
    local TabJuice = Window:AddTab({ Title = "Buy Juice", Icon = "shopping-cart" })
    local TabMixerV2 = Window:AddTab({ Title = "Mixer Fruit", Icon = "syringe" })
    local Setting = Window:AddTab({ Title = "Setting", Icon = "settings" })

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local VirtualUser = game:GetService("VirtualUser")

player.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "BenJaMinZ Hub",
    Text = "AntiAFK Active",
    Duration = 5
})

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "BenJaMinZ Hub",
    Text = "Anti ADMIN Active",
    Duration = 5
})


    local function teleportAFK(pos)
        initCharacter(player.Character or player.CharacterAdded:Wait())
        hrp.CFrame = CFrame.new(unpack(pos))
    end

    TabTeleportAFK:AddButton({
        Title = "AFK 1",
        Callback = function() teleportAFK({22.6135, 200003.5, 170.5}) end
    })
    TabTeleportAFK:AddButton({
        Title = "AFK 2",
        Callback = function() teleportAFK({-10.989439010620117, 200004.5, 194.4368438720703}) end
    })
    TabTeleportAFK:AddButton({
        Title = "AFK 3",
        Callback = function() teleportAFK({-11.223817825317383, 200004.5, 201.46461486816406}) end
    })

    local function AddTeleportButton(tab, name, position)
        tab:AddButton({
            Title = name,
            Callback = function()
                initCharacter(player.Character or player.CharacterAdded:Wait())
                hrp.CFrame = CFrame.new(unpack(position))
            end
        })
    end

    -- ใส่ตำแหน่งทุกเกาะ
    AddTeleportButton(TabTeleportIsland, "Spawn Land 1", {119.5228, 248.0, -1232.9507})
    AddTeleportButton(TabTeleportIsland, "Spawn Land 2", {-296.1837, 265.4994, -96.6268})
    AddTeleportButton(TabTeleportIsland, "Sam Land", {-1281.9680, 239.9977, -1371.8807})
    AddTeleportButton(TabTeleportIsland, "Sell Drink Land", {1504.89208984375, 279.86444091796875, 2171.25341796875})
    AddTeleportButton(TabTeleportIsland, "House Land 1", {898.5979, 302.9982, 1218.1807})
    AddTeleportButton(TabTeleportIsland, "Treea Land", {1161.2182, 238.9002, 3340.6108})
    AddTeleportButton(TabTeleportIsland, "Tiny Land 1", {-35.2822, 228.9999, 2156.0024})
    AddTeleportButton(TabTeleportIsland, "Tiny Land 2", {-4004.8452, 215.9999, -2190.2009})
    AddTeleportButton(TabTeleportIsland, "Forset Land", {-6032.4243, 402, -5.0926})
    AddTeleportButton(TabTeleportIsland, "Egypt Land", {118.2466, 309.9999, 4945.2231})
    AddTeleportButton(TabTeleportIsland, "C Land", {3205.0498, 217, 1560.7314})
    AddTeleportButton(TabTeleportIsland, "Boss Land", {4566.2084, 217, 5462.7485})
    AddTeleportButton(TabTeleportIsland, "Evil Land", {-5271.3535, 516, -7846.6772})
    AddTeleportButton(TabTeleportIsland, "Snowy Land", {-2089.4167, 297, 3418.6816})
    AddTeleportButton(TabTeleportIsland, "SnowyMountains Land", {6644.3789, 417.9989, -1478.4702})
    AddTeleportButton(TabTeleportIsland, "SandCastle Land", {1078.3050, 245.2001, -3335.6132})
    AddTeleportButton(TabTeleportIsland, "Caver Land", {-1094.7250, 356, 1719.1688})
    AddTeleportButton(TabTeleportIsland, "Rock Land", {4879.02685546875, 567.9999389648438, -7359.04638671875})
    AddTeleportButton(TabTeleportIsland, "Mansion Land", {1828.4903564453125, 249.99998474121094, 871.105712890625})
    AddTeleportButton(TabTeleportIsland, "Cave Demon Land", {2053.37255859375, 492, -636.8817138671875})
    AddTeleportButton(TabTeleportIsland, "Marineford Land", {-3133.034912109375, 557.531005859375, -4087.6904296875})
    AddTeleportButton(TabTeleportIsland, "Use Boat TP AFK", {29484.513671875, 219.46290588378906, 126260.875})

    local Section = TabTeleportIsland:AddSection("TP NPC")
    AddTeleportButton(TabTeleportIsland, "AffinityMerchant", {114.3345947265625, 283.635009765625, 4950.927734375})
    AddTeleportButton(TabTeleportIsland, "ExpertiseMerchant", {900.4354248046875, 269.9999694824219, 1219.6353759765625})
    AddTeleportButton(TabTeleportIsland, "FishMerchant", {1983.9578857421875, 217.99998474121094, 566.84521484375})
    AddTeleportButton(TabTeleportIsland, "QuestFishMerchant", {-1701.003173828125, 221.09837341308594, -327.157958984375})
    AddTeleportButton(TabTeleportIsland, "SniperMerchant", {-1844.900634765625, 233.34503173828125, 3414.16259765625})
    AddTeleportButton(TabTeleportIsland, "SwordMerchant", {1000.400146484375, 235.34547424316406, -3339.59765625})

local function AddSniperToggle(tab, name)
    tab:AddToggle(name, {
        Title = name,
        Default = false,
        Callback = function(state)
            local key = "Auto_"..name:gsub("%s","_")
            if state then
                _G[key] = true
                task.spawn(function()
                    while _G[key] do
                        task.wait(0.1)
                        initCharacter(player.Character or player.CharacterAdded:Wait())
                        local model = workspace:FindFirstChild(name)
                        if model and model:IsA("Model") then
                            if not model.PrimaryPart then
                                local firstPart = model:FindFirstChildWhichIsA("BasePart")
                                if firstPart then model.PrimaryPart = firstPart end
                            end
                            if model.PrimaryPart then
                                model:SetPrimaryPartCFrame(hrp.CFrame)
                                task.wait(0.1)
                            end
                        end
                    end
                end)
            else
                _G[key] = false
            end
        end
    })
end

for _, box in ipairs({"Compass","Common Box","Uncommon Box","Rare Box","Ultra Rare Box"}) do
    AddSniperToggle(TabSniper, box)
end

local Section = TabSniperFruit:AddSection("Ultra Rare & Rare Fruit")
    local fruitsList = {
        "Phoenix Fruit", "Quake Fruit", "Dark Fruit", "Light Fruit", "String Fruit", "Magma Fruit",
        "Rumble Fruit", "Chilly Fruit", "Flare Fruit", "Sand Fruit", "Candy Fruit", "Venom Fruit",
        "Gas Fruit", "Plasma Fruit", "Ope Fruit"
        

    }
    local returnPosition = CFrame.new(-10.989439010620117, 200004.5, 194.4368438720703)

    local function warpAndClick(obj)
        if not obj then return end
        initCharacter(player.Character or player.CharacterAdded:Wait())
        local clickDetector = obj:FindFirstChildWhichIsA("ClickDetector")
        if not clickDetector then
            clickDetector = obj:FindFirstChild("Main1") and obj.Main1:FindFirstChildWhichIsA("ClickDetector")
            if not clickDetector and obj:FindFirstChild("Handle") then
                clickDetector = obj.Handle:FindFirstChildWhichIsA("ClickDetector")
            end
        end
        hrp.CFrame = obj.CFrame + Vector3.new(0,3,2)
        task.wait(0.05)
        if clickDetector then
            for i=1,3 do fireclickdetector(clickDetector); task.wait(0.01) end
        end
    end

    local function ClickFruit(fruitName)
        local fruit = workspace:FindFirstChild(fruitName)
        if fruit then
            local handle = fruit:FindFirstChild("Handle") or fruit:FindFirstChild("Main1") or fruit
            warpAndClick(handle)
            task.wait(0.05)
            hrp.CFrame = returnPosition
        end
    end

    local function AddFruitSniperToggle(tab, fruitName)
        tab:AddToggle(fruitName, {
            Title = fruitName,
            Default = false,
            Callback = function(state)
                local key = "AutoFruit_"..fruitName:gsub("%s","_")
                if state then
                    _G[key] = true
                    task.spawn(function()
                        while _G[key] do
                            task.wait(0.01)
                            pcall(function() ClickFruit(fruitName) end)
                        end
                    end)
                else
                    _G[key] = false
                end
            end
        })
    end

    for _, fruit in ipairs(fruitsList) do AddFruitSniperToggle(TabSniperFruit, fruit) end
    local Section = TabSniperFruit:AddSection("Uncommon Fruit")
        local fruitsList = {
        "Barrier Fruit", "Diamond Fruit", "Smelt Fruit", "Bomb Fruit", "Luck Fruit"
    }
    local returnPosition = CFrame.new(-10.989439010620117, 200004.5, 194.4368438720703)

    local function warpAndClick(obj)
        if not obj then return end
        initCharacter(player.Character or player.CharacterAdded:Wait())
        local clickDetector = obj:FindFirstChildWhichIsA("ClickDetector")
        if not clickDetector then
            clickDetector = obj:FindFirstChild("Main1") and obj.Main1:FindFirstChildWhichIsA("ClickDetector")
            if not clickDetector and obj:FindFirstChild("Handle") then
                clickDetector = obj.Handle:FindFirstChildWhichIsA("ClickDetector")
            end
        end
        hrp.CFrame = obj.CFrame + Vector3.new(0,3,2)
        task.wait(0.05)
        if clickDetector then
            for i=1,3 do fireclickdetector(clickDetector); task.wait(0.05) end
        end
    end

    local function ClickFruit(fruitName)
        local fruit = workspace:FindFirstChild(fruitName)
        if fruit then
            local handle = fruit:FindFirstChild("Handle") or fruit:FindFirstChild("Main1") or fruit
            warpAndClick(handle)
            task.wait(0.05)
            hrp.CFrame = returnPosition
        end
    end

    local function AddFruitSniperToggle(tab, fruitName)
        tab:AddToggle(fruitName, {
            Title = fruitName,
            Default = false,
            Callback = function(state)
                local key = "AutoFruit_"..fruitName:gsub("%s","_")
                if state then
                    _G[key] = true
                    task.spawn(function()
                        while _G[key] do
                            task.wait(0.2)
                            pcall(function() ClickFruit(fruitName) end)
                        end
                    end)
                else
                    _G[key] = false
                end
            end
        })
    end

    for _, fruit in ipairs(fruitsList) do AddFruitSniperToggle(TabSniperFruit, fruit) end
    

    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    local AutoDrinkEnabled = false
    local autoDrinkThread = nil

    local drinkNames = {
        "Fruit Juice",
        "Sour Juice",
        "Coconut Milk",
        "Pear Juice",
        "Pumpkin Juice",
        "Banana Juice",
        "Apple Juice",
    }

    local function clickDrink(obj)
        if not obj then return end

        if obj:IsA("Tool") then
            local humanoid = character:FindFirstChild("Humanoid")
            if humanoid then
                humanoid:EquipTool(obj)
                task.wait(0.05)
                local handle = obj:FindFirstChild("Handle")
                if handle then
                    local clickDetector = handle:FindFirstChildWhichIsA("ClickDetector")
                    if clickDetector then
                        pcall(fireclickdetector, clickDetector)

                    else
                        if obj:FindFirstChildWhichIsA("RemoteEvent") then
                            obj:Activate()

                        end
                    end
                end
            end
        else
            local clickDetector = obj:FindFirstChildWhichIsA("ClickDetector")
            if clickDetector then
                pcall(fireclickdetector, clickDetector)

            end
        end
    end

    local function startAutoDrink()
        if autoDrinkThread then return end
        autoDrinkThread = task.spawn(function()
            while AutoDrinkEnabled do
                for _, name in ipairs(drinkNames) do
                    local drink = workspace:FindFirstChild(name)
                    if drink then
                        clickDrink(drink)
                        task.wait(0.01)
                    end
                end

                for _, tool in ipairs(player.Backpack:GetChildren()) do
                    if table.find(drinkNames, tool.Name) then
                        clickDrink(tool)
                        task.wait(0.01)
                    end
                end

                for _, tool in ipairs(character:GetChildren()) do
                    if table.find(drinkNames, tool.Name) then
                        clickDrink(tool)
                        task.wait(0.01)
                    end
                end

                task.wait(0.01)
            end
            autoDrinkThread = nil
        end)
    end

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local character
local humanoid
local hrp

local function refreshCharacter()
    character = player.Character or player.CharacterAdded:Wait()
    hrp = character:WaitForChild("HumanoidRootPart")
    humanoid = character:WaitForChild("Humanoid")
end
refreshCharacter()

player.CharacterAdded:Connect(function(char)
    character = char
    hrp = char:WaitForChild("HumanoidRootPart")
    humanoid = char:WaitForChild("Humanoid")

    if AutoDrinkEnabled2 then
        task.wait(0.5)
        startAutoDrink2()
    end
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:FindFirstChildOfClass("Humanoid")

local AutoDrinkEnabled2 = false
local autoDrinkThread2 = nil

local drinkNames2 = {
    "Cider+",
    "Lemonade+",
    "Juice+",
    "Smoothie+"
}

local function realClickDrink2(tool)
    if not tool or not AutoDrinkEnabled2 then return end

    if tool:IsA("Tool") then
        if humanoid then
            humanoid:EquipTool(tool)
            task.wait(0.05)
            local handle = tool:FindFirstChild("Handle")
            if handle then
                local clickDetector = handle:FindFirstChildWhichIsA("ClickDetector")
                if clickDetector then
                    pcall(fireclickdetector, clickDetector)
                elseif tool:FindFirstChildWhichIsA("RemoteEvent") then
                    tool:FindFirstChildWhichIsA("RemoteEvent"):FireServer()
                else
                    pcall(function() tool:Activate() end)
                end
            end
        end
    else
        local clickDetector = tool:FindFirstChildWhichIsA("ClickDetector")
        if clickDetector then
            pcall(fireclickdetector, clickDetector)
        end
    end
end

function startAutoDrink2()
    if autoDrinkThread2 then return end
    AutoDrinkEnabled2 = true

    for _, tool in ipairs(player.Backpack:GetChildren()) do
        if table.find(drinkNames2, tool.Name) and humanoid then
            humanoid:EquipTool(tool)
        end
    end
    for _, tool in ipairs(character:GetChildren()) do
        if table.find(drinkNames2, tool.Name) and humanoid then
            humanoid:EquipTool(tool)
        end
    end

    autoDrinkThread2 = task.spawn(function()
        while AutoDrinkEnabled2 do

            for _, name in ipairs(drinkNames2) do
                if not AutoDrinkEnabled2 then break end
                local drink = workspace:FindFirstChild(name)
                if drink then
                    realClickDrink2(drink)
                    task.wait(0.01)
                end
            end

            for _, tool in ipairs(player.Backpack:GetChildren()) do
                if not AutoDrinkEnabled2 then break end
                if table.find(drinkNames2, tool.Name) then
                    realClickDrink2(tool)
                    task.wait(0.01)
                end
            end

            for _, tool in ipairs(character:GetChildren()) do
                if not AutoDrinkEnabled2 then break end
                if table.find(drinkNames2, tool.Name) then
                    realClickDrink2(tool)
                    task.wait(0.01)
                end
            end

            task.wait(0.05)
        end
        autoDrinkThread2 = nil
    end)
end

function stopAutoDrink2()
    AutoDrinkEnabled2 = false
    if autoDrinkThread2 then
        autoDrinkThread2 = nil
    end

    if humanoid and humanoid:FindFirstChildOfClass("Tool") then
        humanoid:UnequipTools()
    end
end

player.CharacterAdded:Connect(function(char)
    character = char
    humanoid = character:FindFirstChildOfClass("Humanoid")
    if AutoDrinkEnabled2 then
        task.wait(1)
        startAutoDrink2()
    end
end)

TabJuice:AddToggle("AutoDrink2", {
    Title = "Auto Drink Cider",
    Default = false,
    Callback = function(state)
        AutoDrinkEnabled2 = state
        if state then
            startAutoDrink2()
        else
            stopAutoDrink2()
        end
    end
})


    TabMain:AddToggle("AutoClaimSam", {
        Title = "Auto Claim Sam Quest",
        Default = false,
        Callback = function(state)
            _G.AutoClaimSam = state
            spawn(function()
                while _G.AutoClaimSam do
                    task.wait(0.5)
                    local args = { [1] = "Claim1" }
                    game:GetService("ReplicatedStorage"):WaitForChild("Connections"):WaitForChild("Claim_Sam"):FireServer(unpack(args))
                end
            end)
        end
    })

    local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local AutoTrashEnabled = false
local autoTrashThread = nil
local trashNames = {"Compass"}

local function realDropTool(tool)
    if not tool then return end
    if tool:IsA("Tool") and humanoid then
        humanoid:EquipTool(tool)
        task.wait(0.05)

        local remote = tool:FindFirstChildWhichIsA("RemoteEvent")
        if remote then
            remote:FireServer()
        else
            pcall(function() tool.Parent = workspace end)
        end

    end
end

local function startAutoTrash()
    if autoTrashThread then return end
    autoTrashThread = task.spawn(function()
        while AutoTrashEnabled do

            for _, tool in ipairs(player.Backpack:GetChildren()) do
                if table.find(trashNames, tool.Name) then
                    realDropTool(tool)
                    task.wait(0.1)
                end
            end

            for _, tool in ipairs(character:GetChildren()) do
                if tool:IsA("Tool") and table.find(trashNames, tool.Name) then
                    realDropTool(tool)
                    task.wait(0.1)
                end
            end

            task.wait(0.2)
        end
        autoTrashThread = nil
    end)
end

local function stopAutoTrash()
    AutoTrashEnabled = false
    autoTrashThread = nil
end

TabMain:AddToggle("AutoTrashToggle", {
    Title = "Auto Drop Compass",
    Default = false,
    Callback = function(Value)
        AutoTrashEnabled = Value
        if Value then
            startAutoTrash()
        else
            stopAutoTrash()
        end
    end
})

player.CharacterAdded:Connect(function(char)
    character = char
    humanoid = char:WaitForChild("Humanoid")
end)

TabMain:AddToggle("Find Compass", {
    Title = "Auto Find Compass Sam Only",
    Default = false,
    Callback = function(state)
        _G.FindCompass = state
        spawn(function()

            while _G.FindCompass do
                task.wait(0.1)

                local Players = game:GetService("Players")
                local player = Players.LocalPlayer

                local positions = {
                    Vector3.new(-1225.8975830078125, 217, -1214.4073486328125),
                    Vector3.new(-1280.7467041015625, 217, -1177.253173828125),
                    Vector3.new(-1308.9503173828125, 217, -1231.8668212890625),
                    Vector3.new(-1269.85693359375, 217, -1262.407470703125),
                    Vector3.new(-1219.9324951171875, 217, -1271.6121826171875),
                    Vector3.new(-1317.038818359375, 217, -1297.3819580078125),
                    Vector3.new(-1213.920654296875, 217, -1330.121826171875),
                    Vector3.new(-1242.9039306640625, 217, -1404.9710693359375),
                }

                local function equipAllCompass()
                    local backpack = player:WaitForChild("Backpack")
                    local character = player.Character or player.CharacterAdded:Wait()
                    local equipped = {}

                    for _, tool in ipairs(backpack:GetChildren()) do
                        if tool:IsA("Tool") and tool.Name == "Compass" then
                            tool.Parent = character
                            table.insert(equipped, tool)
                            task.wait(0.01)
                        end
                    end

                    for _, tool in ipairs(character:GetChildren()) do
                        if tool:IsA("Tool") and tool.Name == "Compass" and not table.find(equipped, tool) then
                            table.insert(equipped, tool)
                        end
                    end

                    return equipped
                end

                local function clickAllCompassRapid(tools, times)
                    for i = 1, times do
                        for _, tool in ipairs(tools) do
                            if tool and tool:FindFirstChild("Handle") then
                                tool:Activate()
                            end
                        end
                        task.wait(0.05)
                    end
                end

                local function hasCompass()
                    local backpack = player:WaitForChild("Backpack")
                    local character = player.Character or player.CharacterAdded:Wait()
                    return (#backpack:GetChildren() > 0 and backpack:FindFirstChild("Compass")) or
                           (#character:GetChildren() > 0 and character:FindFirstChild("Compass"))
                end

                local compasses = equipAllCompass()
                if #compasses == 0 then break end

                for _, pos in ipairs(positions) do
                    if not _G.FindCompass then break end
                    local character = player.Character or player.CharacterAdded:Wait()
                    if character:FindFirstChild("HumanoidRootPart") then
                        character.HumanoidRootPart.CFrame = CFrame.new(pos)
                        task.wait(1) --วาปแซม--
                        clickAllCompassRapid(compasses, 5)
                    end
                end
            end
        end)
    end
})

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local AutoTrashEnabled = false
local autoTrashThread = nil

local trashNames = {"Cider+", "Lemonade+", "Juice+", "Smoothie+"}

local function realDropTool(tool)
    if not tool or not AutoTrashEnabled then return end

    if tool:IsA("Tool") then
        humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid:EquipTool(tool)
            task.wait(0.05)
            
            local remote = tool:FindFirstChildWhichIsA("RemoteEvent")
            if remote then
                remote:FireServer()
            else
                pcall(function() tool.Parent = workspace end)
            end
        end
    end
end

local function startAutoTrash()
    if autoTrashThread then return end
    autoTrashThread = task.spawn(function()
        while AutoTrashEnabled do

            for _, tool in ipairs(player.Backpack:GetChildren()) do
                if not AutoTrashEnabled then break end
                if table.find(trashNames, tool.Name) then
                    realDropTool(tool)
                    task.wait(0.05)
                end
            end

            for _, tool in ipairs(character:GetChildren()) do
                if not AutoTrashEnabled then break end
                if table.find(trashNames, tool.Name) then
                    realDropTool(tool)
                    task.wait(0.05)
                end
            end
            task.wait(0.1)
        end
        autoTrashThread = nil
    end)
end

local function stopAutoTrash()
    AutoTrashEnabled = false
    autoTrashThread = nil
end

TabJuice:AddToggle("Auto Trash Drinks", {
    Title = "Auto Drop Cider",
    Default = false,
    Callback = function(state)
        if state then
            AutoTrashEnabled = true
            startAutoTrash()
        else
            stopAutoTrash()
        end
    end
})

player.CharacterAdded:Connect(function(char)
    character = char
    humanoid = character:WaitForChild("Humanoid")
    if AutoTrashEnabled then
        task.wait(1)
        startAutoTrash()
    end
end)

local AutoMixEnabled = false
local autoMixThread = nil

local function warpAndClickMixer(obj)
    if not hrp then return end
    if typeof(obj) == "CFrame" then 

        hrp.CFrame = CFrame.new(obj.Position + Vector3.new(0, 3, 2))
        task.wait(0.05)
        return 
    end
    if obj and obj.Parent then

        hrp.CFrame = CFrame.new(obj.Position + Vector3.new(0, 3, 2))
        task.wait(0.05)
        local clickDetector = obj:FindFirstChildWhichIsA("ClickDetector")
        if clickDetector then 
            fireclickdetector(clickDetector) 
        end
    end
end

local function startAutoClick()
    if autoMixThread then return end
    autoMixThread = task.spawn(function()
        while AutoMixEnabled do
            if not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then
                player.CharacterAdded:Wait()
                hrp = player.Character:WaitForChild("HumanoidRootPart")
                local humanoid = player.Character:WaitForChild("Humanoid")
                humanoid.Died:Connect(function()
                    player.CharacterAdded:Wait()
                    hrp = player.Character:WaitForChild("HumanoidRootPart")
                end)
            end

            local targets = {}

            if workspace:FindFirstChild("Barrels") then
                if workspace.Barrels:FindFirstChild("Crates") then
                    for _, crate in ipairs(workspace.Barrels.Crates:GetChildren()) do
                        table.insert(targets, crate)
                    end
                end
                if workspace.Barrels:FindFirstChild("Barrels") then
                    for _, barrel in ipairs(workspace.Barrels.Barrels:GetChildren()) do
                        table.insert(targets, barrel)
                    end
                end
            end

            for _, obj in ipairs(targets) do
                if not AutoMixEnabled then break end
                warpAndClickMixer(obj)
                task.wait(0.2)
            end

            task.wait(0.05)
        end
        autoMixThread = nil
    end)
end

TabMixerV2:AddToggle("AutoMixFruit", {
    Title = "Auto Crate and Barrel",
    Default = false,
    Callback = function(state)
        AutoMixEnabled = state
        if state then startAutoClick() end
    end
})

    local ToggleQuestHaki = TabMain:AddToggle("AutoQuestHaki", {
    Title = "Auto Get Haki",
    Default = false,
    Callback = function(state)
        _G.auto = state
        if state then
            task.spawn(function()
                while _G.auto do
                    pcall(function()
                        local args = {
                            [1] = "III"
                        }
                        workspace:WaitForChild("Merchants")
                            :WaitForChild("QuestHakiMerchant")
                            :WaitForChild("Clickable")
                            :WaitForChild("Retum")
                            :FireServer(unpack(args))
                    end)
                    task.wait(1)
                end
            end)
        end
    end
})

local NoclipEnabled = false
local NoclipConnection

_G.auto = false

local ToggleAutoIII = TabMain:AddToggle("Auto Kenbunshoku", {
    Title = "Auto Farm Kenbunshoku",
    Description = "Use Bring Mob and Noclip",
    Default = false,
    Callback = function(state)
        _G.auto = state
        if state then
            task.spawn(function()
                while _G.auto do
                    pcall(function()
                        local player = game.Players.LocalPlayer
                        local userData = workspace:WaitForChild("UserData"):WaitForChild("User_"..player.UserId)
                        local III = userData:WaitForChild("III")
                        local args = {
                            [1] = "On",
                            [2] = 1
                        }
                        III:FireServer(unpack(args))
                    end)
                    task.wait(1)
                end
            end)
        end
    end
})

_G.PullThug = false

local TogglePullThug = TabMain:AddToggle("Bring Mob", {
    Title = "Bring Mob",
    Default = false,
    Callback = function(state)
        _G.PullThug = state
        if state then
            task.spawn(function()
                while _G.PullThug do
                    pcall(function()
                        local player = game.Players.LocalPlayer
                        local char = player.Character or player.CharacterAdded:Wait()
                        local hrp = char:FindFirstChild("HumanoidRootPart")

                        if hrp and workspace:FindFirstChild("Enemies") then
                            local thugNames = {
                                ["Lv12 Thug"] = true,
                                ["Lv15 Thug"] = true,
                            }

                            for name, _ in pairs(thugNames) do
                                local enemy = workspace.Enemies:FindFirstChild(name)
                                if enemy and enemy:FindFirstChild("HumanoidRootPart") and enemy:FindFirstChild("Humanoid") then
                                    local eHRP = enemy.HumanoidRootPart
                                    eHRP.CFrame = hrp.CFrame * CFrame.new(0, 0, 0)
                                    eHRP.Anchored = true
                                    enemy.Humanoid.PlatformStand = true
                                end
                            end
                        end
                    end)
                    task.wait(0.2)
                end
            end)
        end
    end
})

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")

local espSize = 14
local ESPColor = Color3.fromRGB(0,255,0)

local espEnabled = false
local boxEnabled = false

local ESPs = {}

local function createESP(plr)
    if plr == LocalPlayer then return end
    if ESPs[plr] then return end
    local char = plr.Character
    if not char then return end
    local head = char:WaitForChild("Head", 5)
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not head or not hrp then return end

    local billboard = Instance.new("BillboardGui")
    billboard.Name = "ESP_Name"
    billboard.Adornee = head
    billboard.AlwaysOnTop = true
    billboard.Size = UDim2.new(0, espSize*10, 0, espSize*4)
    billboard.StudsOffset = Vector3.new(0,3,0)
    billboard.Parent = head

    local label = Instance.new("TextLabel", billboard)
    label.Size = UDim2.new(1,0,1,0)
    label.BackgroundTransparency = 1
    label.Font = Enum.Font.GothamBold
    label.TextScaled = false
    label.TextSize = espSize
    label.TextColor3 = ESPColor
    label.TextStrokeTransparency = 0
    label.Text = plr.Name

    local highlight = Instance.new("Highlight")
    highlight.Name = "BoxESP"
    highlight.Adornee = char
    highlight.FillTransparency = 1
    highlight.OutlineColor = ESPColor
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Parent = char

    ESPs[plr] = {billboard = billboard, label = label, highlight = highlight}
end

local function removeESP(plr)
    if ESPs[plr] then
        pcall(function()
            if ESPs[plr].billboard then ESPs[plr].billboard:Destroy() end
            if ESPs[plr].highlight then ESPs[plr].highlight:Destroy() end
        end)
        ESPs[plr] = nil
    end
end

RunService.RenderStepped:Connect(function()
    if not espEnabled then return end
    for plr,data in pairs(ESPs) do
        local char = plr.Character
        if char and char:FindFirstChild("Humanoid") and char:FindFirstChild("HumanoidRootPart") then
            local hum = char.Humanoid
            local dist = (char.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            local hpPercent = hum.Health / hum.MaxHealth
            if hpPercent > 0.6 then
                data.label.TextColor3 = Color3.fromRGB(0,255,0)
            elseif hpPercent > 0.3 then
                data.label.TextColor3 = Color3.fromRGB(255,165,0)
            else
                data.label.TextColor3 = Color3.fromRGB(255,0,0)
            end
            data.label.Text = string.format("%s | %.0f", plr.Name, dist)
        end
    end
end)

local function scanPlayers()
    for _,plr in pairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer then
            createESP(plr)
            plr.CharacterAdded:Connect(function()
                task.wait(1)
                if espEnabled then createESP(plr) end
            end)
        end
    end
end

Players.PlayerAdded:Connect(function(plr)
    if plr ~= LocalPlayer then
        plr.CharacterAdded:Connect(function()
            task.wait(1)
            if espEnabled then createESP(plr) end
        end)
        if espEnabled then createESP(plr) end
    end
end)

TabMain:AddToggle("ESPPlayer", {
    Title = "ESP Player",
    Default = false,
    Callback = function(state)
        espEnabled = state
        boxEnabled = state
        if state then
            scanPlayers()
        else
            for plr,_ in pairs(ESPs) do
                removeESP(plr)
            end
        end
    end
})


    local ToggleESPFruit = TabMain:AddToggle("ESPFruitLogia", {
        Title = "ESP Fruit In Bag Player",
        Description = "UlrtaRare/Rare Fruit Only",
        Default = false,
        Callback = function(state)
            _G.ESPFruit = state

            local Players = game:GetService("Players")

            local fruits = {
                ["Chilly Fruit"]=true, ["Flare Fruit"]=true, ["Magma Fruit"]=true, ["Rumble Fruit"]=true,
                ["Sand Fruit"]=true, ["Phoenix Fruit"]=true, ["Ope Fruit"]=true,
                ["Quake Fruit"]=true, ["Venom Fruit"]=true, ["Candy Fruit"]=true, ["Gas Fruit"]=true,
                ["Dark Fruit"]=true, ["Plasma Fruit"]=true, ["Rare Box"]=true, ["Ultra Rare Box"]=true, ["Light Fruit"]=true,
                ["String Fruit"]=true,
            }

            local function addESPToCharacter(character, text)
                if character and character:FindFirstChild("Head") and not character.Head:FindFirstChild("FruitESP") then
                    local billboard = Instance.new("BillboardGui")
                    billboard.Name = "FruitESP"
                    billboard.Adornee = character.Head
                    billboard.Size = UDim2.new(0, 200, 0, 50)
                    billboard.AlwaysOnTop = true

                    local label = Instance.new("TextLabel", billboard)
                    label.Size = UDim2.new(1, 0, 1, 0)
                    label.BackgroundTransparency = 1
                    label.Text = text
                    label.TextColor3 = Color3.fromRGB(0, 255, 255)
                    label.TextScaled = true
                    label.Font = Enum.Font.SourceSansBold

                    billboard.Parent = character.Head
                end
            end

            local function removeESP(character)
                if character and character:FindFirstChild("Head") then
                    local esp = character.Head:FindFirstChild("FruitESP")
                    if esp then esp:Destroy() end
                end
            end

            local function checkPlayer(player)
                local function updateESP()
                    if not _G.ESPFruit then return end

                    local fruitList = {}
                    if player:FindFirstChild("Backpack") then
                        for _, item in pairs(player.Backpack:GetChildren()) do
                            if fruits[item.Name] then
                                table.insert(fruitList, item.Name)
                            end
                        end
                    end

                    if player.Character then
                        if #fruitList > 0 then
                            addESPToCharacter(player.Character, table.concat(fruitList, ", "))
                        else
                            removeESP(player.Character)
                        end
                    end
                end

                if player:FindFirstChild("Backpack") then
                    player.Backpack.ChildAdded:Connect(updateESP)
                    player.Backpack.ChildRemoved:Connect(updateESP)
                end

                player.CharacterAdded:Connect(function(char)
                    char:WaitForChild("Head")
                    updateESP()
                end)

                updateESP()
            end

            if state then
                for _, p in pairs(Players:GetPlayers()) do
                    if p ~= Players.LocalPlayer then
                        checkPlayer(p)
                    end
                end

                Players.PlayerAdded:Connect(function(p)
                    if p ~= Players.LocalPlayer then
                        checkPlayer(p)
                    end
                end)
            else
                for _, p in pairs(Players:GetPlayers()) do
                    if p.Character then
                        removeESP(p.Character)
                    end
                end
            end
        end
    })

    local defaultSpeed = 16
    local boostedSpeed = 250
    local speedActive = false

    TabMain:AddToggle("SpeedNoClipToggle", {
        Title = "Speed Hack",
        Default = false,
        Callback = function(state)
            speedActive = state
            initCharacter(player.Character or player.CharacterAdded:Wait())
            local humanoidRef = character:FindFirstChild("Humanoid")
            if humanoidRef then
                humanoidRef.WalkSpeed = state and boostedSpeed or defaultSpeed
            end
        end
    })

    RunService.RenderStepped:Connect(function()
        if speedActive then
            local char = player.Character
            if char then
                local humanoidRef = char:FindFirstChild("Humanoid")
                local hrpRef = char:FindFirstChild("HumanoidRootPart")
                if humanoidRef and hrpRef then
                    local moveDir = humanoidRef.MoveDirection
                    hrpRef.Velocity = Vector3.new(moveDir.X * boostedSpeed, hrpRef.Velocity.Y, moveDir.Z * boostedSpeed)
                end
            end
        end
    end)

    _G.InfiniteJumpMisc = false
    TabMain:AddToggle("InfinityJumpMisc", {
        Title = "Infinity Jump",
        Default = false,
        Callback = function(state) _G.InfiniteJumpMisc = state end
    })
    UserInputService.JumpRequest:Connect(function()
        if _G.InfiniteJumpMisc then
            local char = player.Character or player.CharacterAdded:Wait()
            local hum = char:FindFirstChild("Humanoid")
            if hum then hum:ChangeState(Enum.HumanoidStateType.Jumping) end
        end
    end)
    

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer
local respawnPosition = Vector3.new(-147.59268188476562, 210.9167022705078, -733.9445190429688)

local autoRespawnEnabled = false
local teleportDelay = 2
local respawnDelay = 7


TabMain:AddToggle("AutoRespawnToggle", {
    Title = "Auto Spawn (Farm Bounty)",
    Description = "เอาไว้โดดน้ำ",
    Default = false,
    Callback = function(state)
        autoRespawnEnabled = state
    end
})


local function triggerSpawn()
    local args = { [1] = 2 }
    ReplicatedStorage:WaitForChild("Connections"):WaitForChild("Spawn"):FireServer(unpack(args))
end

local function teleportToPosition(pos)
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(pos)
    end
end


task.spawn(function()
    while true do
        if autoRespawnEnabled and Players:FindFirstChild(LocalPlayer.Name) then

            triggerSpawn()

            wait(teleportDelay)
            teleportToPosition(respawnPosition)

            if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
                local humanoid = LocalPlayer.Character.Humanoid
                humanoid.Died:Wait()
                wait(respawnDelay)
            else
                wait(5)
            end
        else
            wait(1)
        end
    end
end)

    TabMain:AddButton({
    Title = "God Mode",
    Description = "Press God Mode and ResetSpawn",
    Callback = function()
        local ReplicatedStorage = game:GetService('ReplicatedStorage')
        local Event = ReplicatedStorage.Connections.Spawn

        local mt = getrawmetatable(game)
        local oldNamecall = mt.__namecall
        setreadonly(mt, false)

        mt.__namecall = function(self, ...)
            local method = getnamecallmethod()
            if self == Event and method == 'FireServer' then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                    -77.09452056884766,
                    215.99998474121094,
                    -858.5032958984375
                )
                return
            end
            return oldNamecall(self, ...)
        end

        setreadonly(mt, true)
    end
})

    TabMain:AddButton({
        Title = "ALT+Click Teleport",
        Callback = function()
            local mouse = player:GetMouse()
            mouse.Button1Down:Connect(function()
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftAlt) or UserInputService:IsKeyDown(Enum.KeyCode.RightAlt) then
                    initCharacter(player.Character or player.CharacterAdded:Wait())
                    local pos = mouse.Hit.Position
                    hrp.CFrame = CFrame.new(pos + Vector3.new(0,3,0))
                end
            end)
        end
    })

    player.CharacterAdded:Connect(function(char)
        initCharacter(char)
        if AutoMixEnabled then task.wait(1); startAutoClick() end
        if AutoDrinkEnabled then task.wait(1); startAutoDrink() end
    end)

local selectedJuice = "A"
local amountToBuy = 1
local autoBuyEnabled = false

local JuiceDropdown = TabJuice:AddDropdown("JuiceDropdown", {
	Title = "Select Juice",
	Values = { "Cider+", "Lemonade+", "Juice+", "Smoothie+" },
	Multi = false,
	Default = 1,
})

JuiceDropdown:OnChanged(function(Value)
	if Value == "Cider+" then
		selectedJuice = "A"
	elseif Value == "Lemonade+" then
		selectedJuice = "B"
	elseif Value == "Juice+" then
		selectedJuice = "C"
	elseif Value == "Smoothie+" then
		selectedJuice = "D"
	end
end)

spawn(function()
	while task.wait(1) do
		local player = game:GetService("Players").LocalPlayer
		local shopGui = player.PlayerGui:FindFirstChild("ShopDrinksPlus")
		if shopGui and shopGui:FindFirstChild("Frame") then
			local newValues = {}
			local frames = { "A", "B", "C", "D" }
			for i, frame in ipairs(frames) do
				local frameObj = shopGui.Frame:FindFirstChild(frame)
				if frameObj and frameObj:FindFirstChild("Label") then
					newValues[i] = frameObj.Label.Text
				else
					newValues[i] = "Option " .. frame
				end
			end
			JuiceDropdown:SetValues(newValues)
		end
	end
end)

local AmountInput = TabJuice:AddInput("AmountInput", {
	Title = "Amount to Buy",
	Default = "1",
	Placeholder = "Enter amount to buy",
	Numeric = true,
	Finished = false,
	Callback = function(Value)
		local num = tonumber(Value)
		if num and num > 0 then
			amountToBuy = num
		else
			amountToBuy = 1
		end
	end,
})

local AutoBuyToggle = TabJuice:AddToggle("AutoBuyToggle", {
	Title = "Auto Buy Drink",
	Default = false,
})

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local autoBuyEnabled = false
local noclipConn = nil

local function enableNoclip()
    if noclipConn then return end
    noclipConn = RunService.Stepped:Connect(function()
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            for _, part in ipairs(player.Character:GetDescendants()) do
                if part:IsA("BasePart") and part.CanCollide then
                    part.CanCollide = false
                end
            end
        end
    end)
end

local function disableNoclip()
    if noclipConn then
        noclipConn:Disconnect()
        noclipConn = nil
    end
end

AutoBuyToggle:OnChanged(function(Value)
    autoBuyEnabled = Value
    if autoBuyEnabled then
        enableNoclip()

        spawn(function()
            local merchant = workspace:FindFirstChild("Merchants") and workspace.Merchants:FindFirstChild("BetterDrinkMerchant")
            if
                merchant
                and merchant:FindFirstChild("Clickable")
                and player.Character
                and player.Character:FindFirstChild("HumanoidRootPart")
            then
                player.Character.HumanoidRootPart.CFrame = merchant.Clickable.CFrame
                task.wait(0.05)

                for i = 1, amountToBuy do
                    if not autoBuyEnabled then break end

                    if merchant.Clickable:FindFirstChild("ClickDetector") then
                        fireclickdetector(merchant.Clickable.ClickDetector)
                        task.wait(0.05)
                    end

                    local shopGui = player.PlayerGui:FindFirstChild("ShopDrinksPlus")
                    if shopGui and shopGui:FindFirstChild("Frame") then
                        local targetFrame = shopGui.Frame:FindFirstChild(selectedJuice)
                        if targetFrame and targetFrame:FindFirstChild("ImageButton") then
                            firesignal(targetFrame.ImageButton.MouseButton1Click)
                            task.wait(0.05)
                        end
                    end
                end

                AutoBuyToggle:SetValue(false)
            end
        end)
    else
        disableNoclip()
    end
end)


local Players = game:GetService("Players")
local player = Players.LocalPlayer
local RunService = game:GetService("RunService")

local drinkNames = {
    "Cider+",
    "Lemonade+",
    "Juice+",
    "Smoothie+"
}

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "DrinkCheckerUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = game:GetService("CoreGui") 

local label = Instance.new("TextLabel")
label.Size = UDim2.new(0, 300, 0, 150)
label.Position = UDim2.new(0, 10, 0, 10)
label.BackgroundColor3 = Color3.fromRGB(25,25,25)
label.BackgroundTransparency = 0.3
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextScaled = true
label.Font = Enum.Font.SourceSansBold
label.Text = ""
label.Visible = false
label.Parent = screenGui

local drinkCheckerEnabled = false
local character = player.Character or player.CharacterAdded:Wait()

local function updateDrinkUI()
    local displayLines = {}
    for _, drink in ipairs(drinkNames) do
        local count = 0

        for _, item in ipairs(player.Backpack:GetChildren()) do
            if item.Name == drink then
                count += 1
            end
        end

        for _, item in ipairs(character:GetChildren()) do
            if item.Name == drink then
                count += 1
            end
        end
        if count > 0 then
            table.insert(displayLines, drink.." "..count)
        end
    end

    label.Text = table.concat(displayLines, "\n")
end

RunService.RenderStepped:Connect(function()
    if drinkCheckerEnabled then
        character = player.Character or player.CharacterAdded:Wait()
        updateDrinkUI()
    end
end)

TabJuice:AddToggle("DrinkChecker", {
    Title = "Check Juice UI",
    Default = false,
    Callback = function(state)
        drinkCheckerEnabled = state
        label.Visible = state
        if state then
        else
        end
    end
})

local fruits = {
    "Cider+",
    "Lemonade+",
    "Juice+",
    "Smoothie+"
    
}

_G.AutoFruitAll = false

TabJuice:AddToggle("Auto Collect Juice", {
    Title = "Auto Collect Juice",
    Default = false,
    Callback = function(state)
        _G.AutoFruitAll = state
        if state then
            task.spawn(function()
                while _G.AutoFruitAll do
                    task.wait(0.1)
                    local player = game.Players.LocalPlayer
                    local char = player.Character or player.CharacterAdded:Wait()
                    local hrp = char:WaitForChild("HumanoidRootPart")

                    for _, fruit in ipairs(fruits) do
                        local model = workspace:FindFirstChild(fruit)
                        if model and model:IsA("Model") then
                            if not model.PrimaryPart then
                                local firstPart = model:FindFirstChildWhichIsA("BasePart")
                                if firstPart then model.PrimaryPart = firstPart end
                            end
                            if model.PrimaryPart and hrp then
                                model:SetPrimaryPartCFrame(hrp.CFrame)
                                task.wait(0.1)
                            end
                        end
                    end
                end
            end)
        end
    end
})

local AutoTrashEnabled = false
local autoTrashThread = nil
local trashNames = {"1","2","3","4","5","6","7","8"}

local function realDropTool(tool)
    if not tool then return end
    if tool:IsA("Tool") and humanoid then
        humanoid:EquipTool(tool)
        task.wait(0.05)

        local remote = tool:FindFirstChildWhichIsA("RemoteEvent")
        if remote then
            remote:FireServer()
        else
            pcall(function() tool.Parent = workspace end)
        end
    end
end

local function startAutoTrash()
    if autoTrashThread then return end
    autoTrashThread = task.spawn(function()
        while AutoTrashEnabled do

            for _, tool in ipairs(player.Backpack:GetChildren()) do
                if not AutoTrashEnabled then break end
                if table.find(trashNames, tool.Name) then
                    pcall(realDropTool, tool)
                    task.wait(0.01)
                end
            end

            for _, tool in ipairs(character:GetChildren()) do
                if not AutoTrashEnabled then break end
                if table.find(trashNames, tool.Name) then
                    pcall(realDropTool, tool)
                    task.wait(0.01)
                end
            end

            task.wait(0.1)
        end
        autoTrashThread = nil
    end)
end

TabMixerV2:AddToggle("Auto Trash Drinks", {
    Title = "Auto Drop Fruit",
    Default = false,
    Callback = function(state)
        AutoTrashEnabled = state
        if state then
            startAutoTrash()
        else

            AutoTrashEnabled = false
        end
    end
})

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function getHRP()
    local char = player.Character or player.CharacterAdded:Wait()
    return char:WaitForChild("HumanoidRootPart")
end

local function warpAndClick(part)
    local hrp = getHRP()
    if not hrp or not part then
        warn("❌ หา HRP หรือ Part ไม่เจอ")
        return
    end

    hrp.CFrame = part.CFrame + Vector3.new(0, 3, 2)
    task.wait(0.1)

    local clickDetector = part:FindFirstChildWhichIsA("ClickDetector")
    if clickDetector then
        fireclickdetector(clickDetector)

    else
        warn("⚠ ไม่มี ClickDetector ใน", part.Name)
    end
end

TabMixerV2:AddButton({
    Title = "TP Mixer Fruit",
    Callback = function()
        pcall(function()
            local kitchen = workspace:WaitForChild("Island8"):WaitForChild("Kitchen")
            local target = kitchen:GetChildren()[3]
            local bowl = target:WaitForChild("JuicingBowl")

            warpAndClick(bowl:FindFirstChild("Mixer1"))
            task.wait(0.3)
            warpAndClick(bowl:FindFirstChild("MixerMain"))
        end)
    end
})

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local AutoRenameEnabled = false
local autoRenameThread = nil

local ItemMap = {
    ["Apple"] = 1,
    ["Banana"] = 2,
    ["Pumpkin"] = 3,
    ["Green Apple"] = 4,
    ["Melon"] = 5,
    ["Cantaloupe"] = 6,
    ["Coconut"] = 7,
    ["Prickly Pear"] = 8
}

local OriginalNames = {}

local function RenameItemsToNumber()
    local backpack = player:WaitForChild("Backpack")
    for _, item in ipairs(backpack:GetChildren()) do
        local num = ItemMap[item.Name]
        if num then
            OriginalNames[item] = item.Name
            item.Name = tostring(num)
        end
    end
end

local function RestoreOriginalNames()
    for item, originalName in pairs(OriginalNames) do
        if item.Parent then 
            item.Name = originalName
        end
    end
    OriginalNames = {}
end

local function StartAutoRename()
    if autoRenameThread then return end
    autoRenameThread = task.spawn(function()
        while AutoRenameEnabled do
            RenameItemsToNumber()
            task.wait(1)
        end
        autoRenameThread = nil
    end)
end

TabMixerV2:AddToggle("Auto Rename Items", {
    Title = "Auto Rename Fruit",
    Default = false,
    Callback = function(state)
        AutoRenameEnabled = state
        if state then
            RenameItemsToNumber()
            StartAutoRename()
        else
            RestoreOriginalNames()
        end
    end
})
    local function refreshCharacter()
        character = player.Character or player.CharacterAdded:Wait()
        hrp = character:WaitForChild("HumanoidRootPart")
        humanoid = character:WaitForChild("Humanoid")
    end
    refreshCharacter()

    player.CharacterAdded:Connect(function(char)
        character = char
        hrp = char:WaitForChild("HumanoidRootPart")
        humanoid = char:WaitForChild("Humanoid")


        if AutoClickEnabled then startAutoClick() end
        if AutoTrashEnabled then startAutoTrash() end
        if AutoMixEnabled then startAutoMix() end
        if AutoRenameEnabled then StartAutoRename() end
    end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local AutoDrinkEnabled = false
local autoDrinkThread = nil

local drinkNames = {
    "Fruit Juice",
    "Sour Juice",
    "Coconut Milk",
    "Pear Juice",
    "Pumpkin Juice",
    "Banana Juice",
    "Apple Juice",
}

local function clickDrink(obj)
    if not obj then return end

    local char = player.Character or player.CharacterAdded:Wait()
    local humanoid = char:FindFirstChild("Humanoid")
    if not humanoid then return end

    if obj:IsA("Tool") then

        if humanoid:FindFirstChildOfClass("Tool") ~= obj then
            humanoid:EquipTool(obj)
            task.wait(0.05)
        end

        if obj:FindFirstChild("Handle") then
            local clickDetector = obj.Handle:FindFirstChildWhichIsA("ClickDetector")
            if clickDetector then
                pcall(fireclickdetector, clickDetector)
                return
            end
        end

        if obj:FindFirstChildWhichIsA("RemoteEvent") then
            obj:Activate()
        end

    else

        local clickDetector = obj:FindFirstChildWhichIsA("ClickDetector")
        if clickDetector then
            pcall(fireclickdetector, clickDetector)
        end
    end
end

local function startAutoDrink()
    if autoDrinkThread then return end
    autoDrinkThread = task.spawn(function()
        while AutoDrinkEnabled do

            for _, name in ipairs(drinkNames) do
                for _, drink in ipairs(workspace:GetChildren()) do
                    if drink.Name == name then
                        clickDrink(drink)
                    end
                end
            end

            for _, tool in ipairs(player.Backpack:GetChildren()) do
                if table.find(drinkNames, tool.Name) then
                    clickDrink(tool)
                end
            end

            local char = player.Character or player.CharacterAdded:Wait()
            for _, tool in ipairs(char:GetChildren()) do
                if table.find(drinkNames, tool.Name) then
                    clickDrink(tool)
                end
            end

            task.wait(0.1)
        end
        autoDrinkThread = nil
    end)
end

TabMixerV2:AddToggle("AutoDrink MixFruit", {
    Title = "Auto Drink MixerFruit",
    Default = false,
    Callback = function(state)
        AutoDrinkEnabled = state
        if state then
            startAutoDrink()
        end
    end 
})

-----------------------------------------------------------
local function runSpawnLoop()
    while true do
        if _G.autoSpawn and player.Character then
            clickSpawn()
            task.wait(1)
            teleportCharacter(player.Character)
            task.wait(5) 
        else
            task.wait(0.5)
        end
    end
end
-----------------------------------------------------------

local fruits = {
    "Apple",
    "Banana",
    "Pumpkin",
    "Green Apple",
    "Melon",
    "Cantaloupe",
    "Coconut",
    "Prickly Pear"
    
}

_G.AutoFruitAll = false

TabMixerV2:AddToggle("AutoFruitAll", {
    Title = "Auto Collect All Fruits",
    Default = false,
    Callback = function(state)
        _G.AutoFruitAll = state
        if state then
            task.spawn(function()
                while _G.AutoFruitAll do
                    task.wait(0.1)
                    local player = game.Players.LocalPlayer
                    local char = player.Character or player.CharacterAdded:Wait()
                    local hrp = char:WaitForChild("HumanoidRootPart")

                    for _, fruit in ipairs(fruits) do
                        local model = workspace:FindFirstChild(fruit)
                        if model and model:IsA("Model") then
                            if not model.PrimaryPart then
                                local firstPart = model:FindFirstChildWhichIsA("BasePart")
                                if firstPart then model.PrimaryPart = firstPart end
                            end
                            if model.PrimaryPart and hrp then
                                model:SetPrimaryPartCFrame(hrp.CFrame)
                                task.wait(0.1)
                            end
                        end
                    end
                end
            end)
        end
    end
})

task.spawn(runSpawnLoop)

TabMain:AddButton({
    Title = "Hop Vip Server",
    Description = "Warning have banned",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/perkungeiei1-star/VIPSERVER/refs/heads/main/Vip.txt"))()
    end
})

TabMain:AddButton({
    Title = "Hop Normal Server",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/perkungeiei1-star/HOPSERVERNORMAL/refs/heads/main/Normal.lua"))()
    end
})

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

local selectedPlayer = nil
local specterEnabled = false

local PlayerDropdown = TabSpecter:AddDropdown("PlayerDropdown", {
	Title = "Select Player",
	Values = {},
	Multi = false,
	Default = nil,
})

local function UpdatePlayerList()
	local playerNames = {}
	for _, plr in ipairs(Players:GetPlayers()) do
		if plr ~= LocalPlayer then
			table.insert(playerNames, plr.Name)
		end
	end
	PlayerDropdown:SetValues(playerNames)
end

UpdatePlayerList()

PlayerDropdown:OnChanged(function(Value)
	selectedPlayer = Value
end)

local RefreshButton = TabSpecter:AddButton({
	Title = "🔄 Refresh Player List",
	Callback = function()
		UpdatePlayerList()
	end,
})

local SpecterToggle = TabSpecter:AddToggle("SpecterToggle", {
	Title = "👁️ Toggle Specter",
	Default = false,
})

SpecterToggle:OnChanged(function(Value)
	specterEnabled = Value
	if not Value then

		if LocalPlayer.Character and LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid") then
			Camera.CameraSubject = LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
			Camera.CameraType = Enum.CameraType.Custom
		end
	end
end)

task.spawn(function()
	while task.wait(0.2) do
		if specterEnabled and selectedPlayer then
			local target = Players:FindFirstChild(selectedPlayer)
			if target and target.Character and target.Character:FindFirstChildWhichIsA("Humanoid") then
				Camera.CameraSubject = target.Character:FindFirstChildWhichIsA("Humanoid")
				Camera.CameraType = Enum.CameraType.Custom
			else
				if LocalPlayer.Character and LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid") then
					Camera.CameraSubject = LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
				end
			end
		end
	end
end)

local Section = TabSpecter:AddSection("TP player")

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local selectedPlayer = nil
local backOffset = 7

local PlayerDropdown = TabSpecter:AddDropdown("PlayerDropdown", {
	Title = "Select Player",
	Values = {},
	Multi = false,
	Default = nil,
})

local function UpdatePlayerList()
	local playerNames = {}
	for _, plr in ipairs(Players:GetPlayers()) do
		if plr ~= LocalPlayer then
			table.insert(playerNames, plr.Name)
		end
	end
	PlayerDropdown:SetValues(playerNames)
end

UpdatePlayerList()

PlayerDropdown:OnChanged(function(Value)
	selectedPlayer = Value
end)

local RefreshButton = TabSpecter:AddButton({
	Title = "🔄 Refresh Player List",
	Callback = function()
		UpdatePlayerList()
	end,
})

local TPButton = TabSpecter:AddButton({
	Title = "⚡ TP to Player",
	Callback = function()
		if selectedPlayer then
			local target = Players:FindFirstChild(selectedPlayer)
			local char = LocalPlayer.Character
			if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") 
			   and char and char:FindFirstChild("HumanoidRootPart") then

				local targetHRP = target.Character.HumanoidRootPart
				local charHRP = char.HumanoidRootPart

				local backPosition = targetHRP.Position - targetHRP.CFrame.LookVector * backOffset + Vector3.new(0,3,0)

				charHRP.CFrame = CFrame.new(backPosition, targetHRP.Position)
			end
		end
	end
})

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local hrp = character:FindFirstChild("HumanoidRootPart")

local function initCharacter(char)
    if not char then return end
    character = char
    humanoid = char:WaitForChild("Humanoid")
    hrp = char:WaitForChild("HumanoidRootPart")
end

player.CharacterAdded:Connect(initCharacter)

-- =======================
-- Auto Open Box
-- =======================
local function useTool(tool)
    if not tool or not hrp then return end
    if tool:IsA("Tool") then
        humanoid:EquipTool(tool)
        task.wait(0.05)
        pcall(function()
            local remote = tool:FindFirstChildWhichIsA("RemoteEvent") or tool:FindFirstChildWhichIsA("RemoteFunction")
            if remote then
                if remote:IsA("RemoteEvent") then
                    remote:FireServer()
                else
                    remote:InvokeServer()
                end
            elseif tool:FindFirstChildWhichIsA("ClickDetector") then
                tool.ClickDetector:FireClick(player)
            else
                tool:Activate()
            end
        end)
    end
end

local SectionOpen = TabDropBox:AddSection("Auto Open Box")
local OpenToggles = {}

local function AddOpenToggle(name)
    TabDropBox:AddToggle(name, {
        Title = name,
        Default = false,
        Callback = function(state)
            OpenToggles[name] = state
            if state then
                task.spawn(function()
                    while OpenToggles[name] do
                        task.wait(0.1)
                        character = player.Character or player.CharacterAdded:Wait()
                        humanoid = character:FindFirstChildOfClass("Humanoid")
                        hrp = character:FindFirstChild("HumanoidRootPart")

                        for _, tool in ipairs(player.Backpack:GetChildren()) do
                            if tool.Name == name then
                                pcall(useTool, tool)
                            end
                        end

                        for _, tool in ipairs(character:GetChildren()) do
                            if tool.Name == name then
                                pcall(useTool, tool)
                            end
                        end

                        local model = workspace:FindFirstChild(name)
                        if model and model:IsA("Model") then
                            if not model.PrimaryPart then
                                local firstPart = model:FindFirstChildWhichIsA("BasePart")
                                if firstPart then model.PrimaryPart = firstPart end
                            end
                            if model.PrimaryPart and hrp then
                                model:SetPrimaryPartCFrame(hrp.CFrame)
                                task.wait(0.1)
                            end
                        end
                    end
                end)
            end
        end
    })
end

for _, box in ipairs({"Common Box","Uncommon Box","Rare Box","Ultra Rare Box"}) do
    AddOpenToggle(box)
end

-- =======================
-- Auto Drop Box
-- =======================
local DropToggles = {}
local SectionDrop = TabDropBox:AddSection("Auto Drop Box")

local function realDropTool(tool)
    if not tool then return end
    if tool:IsA("Tool") then
        humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then

            humanoid:EquipTool(tool)
            task.wait(0.05)
            
            local remote = tool:FindFirstChildWhichIsA("RemoteEvent") or tool:FindFirstChildWhichIsA("RemoteFunction")
            if remote then
                pcall(function()
                    if remote:IsA("RemoteEvent") then
                        remote:FireServer("drop")
                    else
                        remote:InvokeServer("drop")
                    end
                end)
            else

                pcall(function() tool.Parent = workspace end)
            end


            humanoid:UnequipTools()
        end
    end
end

local function AddDropToggle(name)
    TabDropBox:AddToggle(name, {
        Title = name,
        Default = false,
        Callback = function(state)
            DropToggles[name] = state
            if state then
                task.spawn(function()
                    while DropToggles[name] do
                        task.wait(0.1)
                        character = player.Character or player.CharacterAdded:Wait()
                        humanoid = character:FindFirstChildOfClass("Humanoid")

                        for _, tool in ipairs(player.Backpack:GetChildren()) do
                            if tool.Name == name then
                                pcall(realDropTool, tool)
                            end
                        end

                        for _, tool in ipairs(character:GetChildren()) do
                            if tool.Name == name then
                                pcall(realDropTool, tool)
                            end
                        end
                    end
                end)
            end
        end
    })
end

for _, box in ipairs({"Common Box","Uncommon Box","Rare Box","Ultra Rare Box"}) do
    AddDropToggle(box)
end

Window:SelectTab(1)
print("Script loaded: BenJaMinZ Hub (Complete)")
SaveManager:SetLibrary(Fluent)
SaveManager:BuildConfigSection(Setting)
SaveManager:LoadAutoloadConfig()

----------------------------------------------------------------------------------------------------------------------------
-- Anti ADMIN and UI Moblie
----------------------------------------------------------------------------------------------------------------------------
loadstring(game:HttpGet("https://raw.githubusercontent.com/perkungeiei1-star/antiadmin/refs/heads/main/Antiadmin.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/perkungeiei1-star/UI/refs/heads/main/UI%20Moblie.lua"))()
----------------------------------------------------------------------------------------------------------------------------