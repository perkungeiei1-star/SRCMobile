    local Players = game:GetService("Players")
    local TweenService = game:GetService("TweenService")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")

    local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
    local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
    local Window = Fluent:CreateWindow({
        Title = "[⚔️AIZEN] Rogue Piece",
        SubTitle = "Made by BenJaMinZ",
        TabWidth = 200,
        Size = UDim2.fromOffset(580,460),
        Acrylic = false,
        Theme = "Dark",
        MinimizeKey = Enum.KeyCode.LeftControl
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
    local TabAutoFarm = Window:AddTab({ Title = "Auto Farm", Icon = "bot" })
    local TabTeleportIsland = Window:AddTab({ Title = "Teleport Island", Icon = "globe" })
    local TabStat = Window:AddTab({ Title = "Upgrade Stat", Icon = "circle-ellipsis" })
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


local Players = game:WaitForChild("Players")
local ReplicatedStorage = game:WaitForChild("ReplicatedStorage")

local LocalPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()

local AutoHakiEnabled = false

local function fireHaki()
    local Character = LocalPlayer.Character
    if not Character then return end

    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

    if not Humanoid or Humanoid.Health <= 0 or not HumanoidRootPart then
        return
    end

    local Remotes = ReplicatedStorage:FindFirstChild("Remotes")
    if not Remotes then return end

    local remote = Remotes:FindFirstChild("Serverside")
    if not remote then return end

    local hakiValue = AutoHakiEnabled and 1 or 2

    local args = {
        [1] = "Server",
        [2] = "Misc",
        [3] = "Haki",
        [4] = hakiValue
    }

    pcall(function()
        remote:FireServer(unpack(args))
    end)
end

LocalPlayer.CharacterAdded:Connect(function(Character)
    if AutoHakiEnabled then
        Character:WaitForChild("Humanoid")
        task.wait(0.01)
        fireHaki()
    end
end)

TabMain:AddToggle("AutoHaki", {
    Title = "Auto Haki",
    Default = false,
    Callback = function(state)
        AutoHakiEnabled = state
        fireHaki()
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
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")

local espSize = 14
local ESPColor = Color3.fromRGB(0,255,0)

local espEnabled = false
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

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1,0,1,0)
    label.BackgroundTransparency = 1
    label.Font = Enum.Font.GothamBold
    label.TextScaled = false
    label.TextSize = espSize
    label.TextColor3 = ESPColor
    label.TextStrokeTransparency = 0
    label.Text = plr.Name
    label.Parent = billboard

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
        else
            removeESP(plr)
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
        if state then
            scanPlayers()
        else
            for plr,_ in pairs(ESPs) do
                removeESP(plr)
            end
        end
    end
})

local Section = TabMain:AddSection("Select Farm Haki")

local Players = game:WaitForChild("Players")
local ReplicatedStorage = game:WaitForChild("ReplicatedStorage")

local LocalPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()

local AutoHakiEnabled = false
local SelectedHakiType = "Haki"

local function fireHaki()
    local Character = LocalPlayer.Character
    if not Character then return end

    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    if not Humanoid or Humanoid.Health <= 0 or not HumanoidRootPart then return end

    local Remotes = ReplicatedStorage:FindFirstChild("Remotes")
    if not Remotes then return end

    local remote = Remotes:FindFirstChild("Serverside")
    if not remote then return end

    local args = {
        [1] = "Server",
        [2] = "Misc",
        [3] = SelectedHakiType,
        [4] = AutoHakiEnabled and 1 or 2
    }

    pcall(function()
        remote:FireServer(unpack(args))
    end)
end

LocalPlayer.CharacterAdded:Connect(function(Character)
    Character:WaitForChild("Humanoid")
    task.wait(0.001)
    if AutoHakiEnabled then
        task.spawn(function()
            while AutoHakiEnabled do
                fireHaki()
                task.wait(0.001)
            end
        end)
    end
end)

local HakiDropdown = TabMain:AddDropdown("HakiTypeDropdown", {
    Title = "Select Haki",
    Values = {"Haki", "Observation"},
    Default = "Haki",
})

HakiDropdown:OnChanged(function(value)
    SelectedHakiType = value
end)

local AutoHakiToggle = TabMain:AddToggle("AutoHakiToggle", {
    Title = "Auto Farm Haki / Observation",
    Default = false,
})

AutoHakiToggle:OnChanged(function(state)
    AutoHakiEnabled = state

    if AutoHakiEnabled then
        task.spawn(function()
            while AutoHakiEnabled do
                fireHaki()
                task.wait(0.001)
            end
        end)
    end
end)


TabMain:AddButton({
    Title = "Buy Haki",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(37.30762481689453, 2.223743200302124, 222.4023895263672)
    end
})

TabMain:AddButton({
    Title = "Buy Observation",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-626.7130126953125, 8.763612747192383, -216.65618896484375)
    end
})

------------------------------------------------------------------------------------------------------
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Section = TabAutoFarm:AddSection("Setup Weapon")

local SelectedWeapon = "Zangetsu"
local AttackValue = 1
local SelectedType = "Sword"

local WeaponTypes = {
    ["Zangetsu"] = "Sword",
    ["Dark Blade"] = "Sword",
    ["Dual Dagger"] = "Sword",
    ["Tanjiro's Nichirin"] = "Sword",
    ["Aizen"] = "Combat",
    ["Sukuna"] = "Combat",
    ["Akaza"] = "Combat",
    ["Sandevistan"] = "Combat"
}

local function EquipWeapon(weaponName)
    local character = LocalPlayer.Character
    local backpack = LocalPlayer:FindFirstChild("Backpack")

    if not character or not backpack then return end

    local weapon = backpack:FindFirstChild(weaponName)
    if weapon then
        weapon.Parent = character
    else
    end
end

local function WaitAndEquip(weaponName)
    task.spawn(function()
        local backpack = LocalPlayer:WaitForChild("Backpack")
        local weapon = backpack:WaitForChild(weaponName, 5)
        if weapon then
            EquipWeapon(weaponName)
        else
        end
    end)
end

LocalPlayer.CharacterAdded:Connect(function(newChar)
    task.wait(2)
    WaitAndEquip(SelectedWeapon)
end)

TabAutoFarm:AddDropdown("WeaponSelect", {
    Title = "Select Weapon",
    Values = {"Zangetsu", "Dark Blade", "Dual Dagger", "Tanjiro's Nichirin", "Aizen", "Sukuna", "Akaza", "Sandevistan"},
    Default = "Zangetsu",
    Callback = function(value)
        SelectedWeapon = value
        SelectedType = WeaponTypes[value] or "Sword"
        WaitAndEquip(value)
    end
})

TabAutoFarm:AddDropdown("AttackSelect", {
    Title = "Attack Mode",
    Values = {"1", "2", "3", "4", "5"},
    Default = "4",
    Callback = function(value)
        AttackValue = tonumber(value)
    end
})

local Section = TabAutoFarm:AddSection("Select Mob")
local AutoKillEnabled = false
local SelectedMob = "Bandit"

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")
local VirtualInputManager = game:GetService("VirtualInputManager")

local LocalPlayer = Players.LocalPlayer

local MobData = {
    ["Bandit"] = { ePos = Vector3.new(18,6,-344), KillLimit = 5 },
    ["Bandit Leader"] = { ePos = Vector3.new(-43,22,-341), KillLimit = 1 },
    ["Skeleton"] = { ePos = Vector3.new(-519.734375, 7.0636210441589355, -155.56875610351562), KillLimit = 5 },
    ["Pirate Skeleton"] = { ePos = Vector3.new(-603,16,-107), KillLimit = 1 },
    ["Desert Thief"] = { ePos = Vector3.new(455,5,-28), KillLimit = 5 },
    ["Katana Master"] = { ePos = Vector3.new(488,5,-74), KillLimit = 1 },
    ["Slayer's Trainee"] = { ePos = Vector3.new(-496.665,11.044,514.502), KillLimit = 5 },
    ["Tanjiro"] = { ePos = Vector3.new(-530.481,10.964,532.068), KillLimit = 1 },
    ["Aizen"] = { ePos = Vector3.new(-413.449,3.967,-705.239), KillLimit = 1 },
    ["Mihawk"] = { ePos = Vector3.new(-31.633546829223633, 2.223743200302124, 152.06703186035156), KillLimit = 1 },
    ["Sung Jin Woo"] = { ePos = Vector3.new(-75.64358520507812, 2.223743200302124, 136.8011932373047), KillLimit = 1 }
}

local function attackMob(npc, HumanoidRootPart)
    local humanoid = npc:FindFirstChild("Humanoid")
    if not humanoid or humanoid.Health <= 0 then return false end

    local function attack()
        local args = {
            [1] = "Server",
            [2] = SelectedType,
            [3] = "M1s",
            [4] = SelectedWeapon,
            [5] = AttackValue
        }
        ReplicatedStorage.Remotes.Serverside:FireServer(unpack(args))
    end

    local function stayBehind()
        local hrp = npc:FindFirstChild("HumanoidRootPart")
        if not hrp then return end
        local backOffset = hrp.CFrame.LookVector * -3
        local newPos = hrp.Position + backOffset
        local tween = TweenService:Create(HumanoidRootPart, TweenInfo.new(0.08), {
            CFrame = CFrame.new(newPos, hrp.Position)
        })
        tween:Play()
        tween.Completed:Wait()
    end

    while AutoKillEnabled and humanoid.Health > 0 and HumanoidRootPart.Parent:FindFirstChild("Humanoid") do
        stayBehind()
        attack()
        task.wait(0.01)
    end

    return humanoid.Health <= 0
end

local function findAizen()
    if workspace:FindFirstChild("Main") and workspace.Main:FindFirstChild("Characters") and workspace.Main.Characters:FindFirstChild("Huecomundo") and workspace.Main.Characters.Huecomundo:FindFirstChild("Boss") then
        return workspace.Main.Characters.Huecomundo.Boss:FindFirstChild("Aizen")
    end
    return nil
end

local function startAutoKill()
    task.spawn(function()
        while AutoKillEnabled do
            local mobInfo = MobData[SelectedMob]
            if not mobInfo then break end

            local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

            HumanoidRootPart.CFrame = CFrame.new(mobInfo.ePos)
            task.wait(0.1)
            VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
            task.wait(1)
            VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
            task.wait(1)

            local killedCount = 0
            local alreadyKilled = {}

            if SelectedMob == "Aizen" then
                local aizen = findAizen()
                if aizen and aizen:FindFirstChild("Humanoid") and aizen.Humanoid.Health > 0 then
                    attackMob(aizen, HumanoidRootPart)
                end
            else
                while AutoKillEnabled and killedCount < mobInfo.KillLimit do
                    for _, npc in ipairs(workspace:GetDescendants()) do
                        if not AutoKillEnabled then break end
                        if npc:IsA("Model") and npc.Name == SelectedMob and npc:FindFirstChild("Humanoid") and not alreadyKilled[npc] then
                            local success = attackMob(npc, HumanoidRootPart)
                            if success then
                                alreadyKilled[npc] = true
                                killedCount += 1
                                if killedCount >= mobInfo.KillLimit then break end
                            end
                        end
                    end
                    task.wait(0.1)
                end
            end

            task.wait(0.5)
        end
    end)
end

LocalPlayer.CharacterAdded:Connect(function(Character)
    if AutoKillEnabled then
        task.wait(1)
        local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
        startAutoKill()
    end
end)

TabAutoFarm:AddDropdown("MobSelect", {
    Title = "Select Mob",
    Values = {"Bandit","Bandit Leader","Skeleton","Pirate Skeleton",
             "Desert Thief","Katana Master","Slayer's Trainee","Tanjiro","Aizen","Mihawk","Sung Jin Woo"},
    Default = "Bandit",
    Callback = function(value)
        SelectedMob = value
    end
})

TabAutoFarm:AddToggle("AutoKill", {
    Title = "Auto Kill",
    Default = false,
    Callback = function(state)
        AutoKillEnabled = state
        if state then
            startAutoKill()
        end
    end
})


---------------------------------------------------------------------------------------------------------------------------------------------------------
local Section = TabAutoFarm:AddSection("Select Boss Spawn")
local Players = game:GetService("Players")
local VirtualInputManager = game:GetService("VirtualInputManager")
local LocalPlayer = Players.LocalPlayer
local Workspace = game:GetService("Workspace")

local SelectedBoss = "Sukuna"

local BossDropdown = TabAutoFarm:AddDropdown("BossDropdown", {
    Title = "Select Boss",
    Values = {"Sukuna","Akaza","David"},
    Multi = false,
    Default = 1
})

BossDropdown:OnChanged(function(Value)
    SelectedBoss = Value
end)

local ToggleEnabled = false
TabAutoFarm:AddToggle("AutoWarpSpawn", {
    Title = "Auto Spawn Boss",
    Default = false,
    Callback = function(state)
        ToggleEnabled = state
        if ToggleEnabled then
            task.spawn(function()
                while ToggleEnabled do

                    local bossFolder = Workspace:FindFirstChild("Main")
                    and Workspace.Main:FindFirstChild("Characters")
                    and Workspace.Main.Characters:FindFirstChild("Throne Isle")
                    and Workspace.Main.Characters["Throne Isle"]:FindFirstChild("Boss")
                    
                    if bossFolder then
                        local bossExists = bossFolder:FindFirstChild(SelectedBoss)
                        if bossExists then
                            task.wait(2)
                            continue
                        end
                    end

                    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                    local hrp = character:WaitForChild("HumanoidRootPart")
                    local targetPos = Vector3.new(534.2262573242188, 2.6505398750305176, -539.0162963867188)
                    hrp.CFrame = CFrame.new(targetPos)
                    task.wait(0.1)

                    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
                    task.wait(0.7)
                    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)

                    local clickX, clickY
                    if SelectedBoss == "Sukuna" then
                        clickX, clickY = 942, 450
                    elseif SelectedBoss == "Akaza" then
                        clickX, clickY = 942, 500
                    elseif SelectedBoss == "David" then
                        clickX, clickY = 942, 610
                    end

                    if clickX and clickY then
                        VirtualInputManager:SendMouseButtonEvent(clickX, clickY, 0, true, game, 0)
                        task.wait(0.05)
                        VirtualInputManager:SendMouseButtonEvent(clickX, clickY, 0, false, game, 0)
                    end

                    local spawnX, spawnY = 951, 685
                    VirtualInputManager:SendMouseButtonEvent(spawnX, spawnY, 0, true, game, 0)
                    task.wait(0.05)
                    VirtualInputManager:SendMouseButtonEvent(spawnX, spawnY, 0, false, game, 0)

                    task.wait(1)
                end
            end)
        end
    end
})


local KillSukunaEnabled = false

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer

local function attackSukuna(npc, HumanoidRootPart)
    local humanoid = npc:FindFirstChild("Humanoid")
    if not humanoid or humanoid.Health <= 0 then return false end

    local function attack()
        local args = {
            [1] = "Server",
        [2] = SelectedType,
            [3] = "M1s",
            [4] = SelectedWeapon,
            [5] = AttackValue
        }
        ReplicatedStorage.Remotes.Serverside:FireServer(unpack(args))
    end

    local function stayBehind(npc)
        local hrp = npc:FindFirstChild("HumanoidRootPart")
        if not hrp then return end
        local backOffset = hrp.CFrame.LookVector * -3
        local newPos = hrp.Position + backOffset
        local tween = TweenService:Create(HumanoidRootPart, TweenInfo.new(0.08), {
            CFrame = CFrame.new(newPos, hrp.Position)
        })
        tween:Play()
        tween.Completed:Wait()
    end

    while KillSukunaEnabled 
        and humanoid.Health > 0 
        and HumanoidRootPart.Parent:FindFirstChild("Humanoid") 
        and HumanoidRootPart.Parent.Humanoid.Health > 0 
    do
        stayBehind(npc)
        attack()
        task.wait(0.01)
    end

    return humanoid.Health <= 0
end

local function attackSukunaLoop(HumanoidRootPart)
    while KillSukunaEnabled do
        local sukunaPath = workspace:FindFirstChild("Main")
        if sukunaPath and sukunaPath:FindFirstChild("Characters") 
            and sukunaPath.Characters:FindFirstChild("Throne Isle") 
            and sukunaPath.Characters["Throne Isle"]:FindFirstChild("Boss")
            and sukunaPath.Characters["Throne Isle"].Boss:FindFirstChild("Sukuna") then

            local npc = sukunaPath.Characters["Throne Isle"].Boss.Sukuna
            local humanoid = npc:FindFirstChild("Humanoid")

            if humanoid and humanoid.Health > 0 then
                attackSukuna(npc, HumanoidRootPart)
            end
        end
        task.wait(0.5)
    end
end

local function startKillSukuna()
    task.spawn(function()
        while KillSukunaEnabled do
            local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local Humanoid = Character:WaitForChild("Humanoid")
            local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

            repeat task.wait(0.1) until Humanoid and Humanoid.Health > 0

            attackSukunaLoop(HumanoidRootPart)

            task.wait(0.5)
        end
    end)
end

LocalPlayer.CharacterAdded:Connect(function(Character)
    if KillSukunaEnabled then
        task.wait(1)
        local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
        attackSukunaLoop(HumanoidRootPart)
    end
end)

TabAutoFarm:AddToggle("KillSukuna", {
    Title = "Auto Kill Boss Sukuna",
    Default = false,
    Callback = function(state)
        KillSukunaEnabled = state
        if state then
            startKillSukuna()
        end
    end
})

local KillAkazaEnabled = false

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer

local function attackAkaza(npc, HumanoidRootPart)
    local humanoid = npc:FindFirstChild("Humanoid")
    if not humanoid or humanoid.Health <= 0 then return false end

    local function attack()
        local args = {
            [1] = "Server",
        [2] = SelectedType,
            [3] = "M1s",
            [4] = SelectedWeapon,
            [5] = AttackValue
        }
        ReplicatedStorage.Remotes.Serverside:FireServer(unpack(args))
    end

    local function stayBehind(npc)
        local hrp = npc:FindFirstChild("HumanoidRootPart")
        if not hrp then return end
        local backOffset = hrp.CFrame.LookVector * -3
        local newPos = hrp.Position + backOffset
        local tween = TweenService:Create(HumanoidRootPart, TweenInfo.new(0.08), {
            CFrame = CFrame.new(newPos, hrp.Position)
        })
        tween:Play()
        tween.Completed:Wait()
    end

    while KillAkazaEnabled 
        and humanoid.Health > 0 
        and HumanoidRootPart.Parent:FindFirstChild("Humanoid") 
        and HumanoidRootPart.Parent.Humanoid.Health > 0 
    do
        stayBehind(npc)
        attack()
        task.wait(0.01)
    end

    return humanoid.Health <= 0
end

local function attackAkazaLoop(HumanoidRootPart)
    while KillAkazaEnabled do
        local AkazaPath = workspace:FindFirstChild("Main")
        if AkazaPath and AkazaPath:FindFirstChild("Characters") 
            and AkazaPath.Characters:FindFirstChild("Throne Isle") 
            and AkazaPath.Characters["Throne Isle"]:FindFirstChild("Boss")
            and AkazaPath.Characters["Throne Isle"].Boss:FindFirstChild("Akaza") then

            local npc = AkazaPath.Characters["Throne Isle"].Boss.Akaza
            local humanoid = npc:FindFirstChild("Humanoid")

            if humanoid and humanoid.Health > 0 then
                attackAkaza(npc, HumanoidRootPart)
            end
        end
        task.wait(0.5)
    end
end

local function startKillAkaza()
    task.spawn(function()
        while KillAkazaEnabled do
            local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local Humanoid = Character:WaitForChild("Humanoid")
            local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

            repeat task.wait(0.1) until Humanoid and Humanoid.Health > 0

            attackAkazaLoop(HumanoidRootPart)

            task.wait(0.5)
        end
    end)
end

LocalPlayer.CharacterAdded:Connect(function(Character)
    if KillAkazaEnabled then
        task.wait(1)
        local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
        attackAkazaLoop(HumanoidRootPart)
    end
end)

TabAutoFarm:AddToggle("KillAkaza", {
    Title = "Auto Kill Boss Akaza",
    Default = false,
    Callback = function(state)
        KillAkazaEnabled = state
        if state then
            startKillAkaza()
        end
    end
})

local KillDavidEnabled = false

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer

local function attackDavid(npc, HumanoidRootPart)
    local humanoid = npc:FindFirstChild("Humanoid")
    if not humanoid or humanoid.Health <= 0 then return false end

    local function attack()
        local args = {
            [1] = "Server",
        [2] = SelectedType,
            [3] = "M1s",
            [4] = SelectedWeapon,
            [5] = AttackValue
        }
        ReplicatedStorage.Remotes.Serverside:FireServer(unpack(args))
    end

    local function stayBehind(npc)
        local hrp = npc:FindFirstChild("HumanoidRootPart")
        if not hrp then return end
        local backOffset = hrp.CFrame.LookVector * -3
        local newPos = hrp.Position + backOffset
        local tween = TweenService:Create(HumanoidRootPart, TweenInfo.new(0.08), {
            CFrame = CFrame.new(newPos, hrp.Position)
        })
        tween:Play()
        tween.Completed:Wait()
    end

    while KillDavidEnabled 
        and humanoid.Health > 0 
        and HumanoidRootPart.Parent:FindFirstChild("Humanoid") 
        and HumanoidRootPart.Parent.Humanoid.Health > 0 
    do
        stayBehind(npc)
        attack()
        task.wait(0.01)
    end

    return humanoid.Health <= 0
end

local function attackDavidLoop(HumanoidRootPart)
    while KillDavidEnabled do
        local DavidPath = workspace:FindFirstChild("Main")
        if DavidPath and DavidPath:FindFirstChild("Characters") 
            and DavidPath.Characters:FindFirstChild("Throne Isle") 
            and DavidPath.Characters["Throne Isle"]:FindFirstChild("Boss")
            and DavidPath.Characters["Throne Isle"].Boss:FindFirstChild("David") then

            local npc = DavidPath.Characters["Throne Isle"].Boss.David
            local humanoid = npc:FindFirstChild("Humanoid")

            if humanoid and humanoid.Health > 0 then
                attackDavid(npc, HumanoidRootPart)
            end
        end
        task.wait(0.5)
    end
end

local function startKillDavid()
    task.spawn(function()
        while KillDavidEnabled do
            local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local Humanoid = Character:WaitForChild("Humanoid")
            local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

            repeat task.wait(0.1) until Humanoid and Humanoid.Health > 0

            attackDavidLoop(HumanoidRootPart)

            task.wait(0.5)
        end
    end)
end

LocalPlayer.CharacterAdded:Connect(function(Character)
    if KillDavidEnabled then
        task.wait(1)
        local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
        attackDavidLoop(HumanoidRootPart)
    end
end)

TabAutoFarm:AddToggle("KillDavid", {
    Title = "Auto Kill Boss David",
    Default = false,
    Callback = function(state)
        KillDavidEnabled = state
        if state then
            startKillDavid()
        end
    end
})


---------------------------------------------------------------------------------------------------------------------------------------------------------
local SelectedIsland = "Spawn Island"

local IslandPositions = {
    ["Spawn Island"] = CFrame.new(-9.327237129211426, 1.3490238189697266, -225.71466064453125),
    ["Skeleton Island"] = CFrame.new(-462.4227600097656, 3.3636250495910645, -114.52303314208984),
    ["Sandora Island"] = CFrame.new(388.45977783203125, 5.330129146575928, -49.08338928222656),
    ["Tanjiro Island"] = CFrame.new(-492.0806579589844, 11.044139862060547, 440.27667236328125),
    ["Mihank Island"] = CFrame.new(-41.3193244934082, 2.1237449645996094, 89.08316802978516),
    ["Sung Jin Woo Island"] = CFrame.new(319.5688171386719, 5.199405193328857, 362.7450866699219),
    ["Aizen Island"] = CFrame.new(-389.8265380859375, 3.9669671058654785, -634.8553466796875),
    ["Thone Island"] = CFrame.new(463.8880920410156, 2.244874954223633, -518.7081298828125),
}

local function TeleportToIsland(islandName)
    local character = LocalPlayer.Character
    if not character then return end

    local hrp = character:FindFirstChild("HumanoidRootPart")
    if hrp and IslandPositions[islandName] then
        hrp.CFrame = IslandPositions[islandName]

        task.wait(0.1)
        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
        task.wait(0.7)
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
    end
end

LocalPlayer.CharacterAdded:Connect(function(newChar)
    task.wait(2)
    TeleportToIsland(SelectedIsland)
end)

TabTeleportIsland:AddDropdown("IslandSelect", {
    Title = "Select Island",
    Values = {"Spawn Island", "Skeleton Island", "Sandora Island", "Tanjiro Island", "Mihank Island", "Sung Jin Woo Island", "Aizen Island", "Thone Island"},
    Default = "Spawn Island",
    Callback = function(value)
        SelectedIsland = value
        TeleportToIsland(value)
    end
})

---------------------------------------------------------------------------------------------------------------------------------------------------------

local selectedStat = "Strength"
local amountToUpgrade = 1
local autoUpgradeEnabled = false

local StatDropdown = TabStat:AddDropdown("StatDropdown", {
    Title = "Select Stat",
    Values = {"Strength", "Defense", "Sword", "Power"},
    Multi = false,
    Default = 1,
})

StatDropdown:OnChanged(function(value)
    selectedStat = value
end)

local AmountInput = TabStat:AddInput("AmountInput", {
    Title = "Amount to Upgrade",
    Default = "1",
    Placeholder = "Enter amount",
    Numeric = true,
    Finished = false,
    Callback = function(Value)
        local num = tonumber(Value)
        if num and num > 0 then
            amountToUpgrade = num
        else
            amountToUpgrade = 1
        end
    end,
})

local AutoUpgradeToggle = TabStat:AddToggle("AutoUpgradeToggle", {
    Title = "Auto Upgrade Stat",
    Default = false,
})

AutoUpgradeToggle:OnChanged(function(value)
    autoUpgradeEnabled = value

    if autoUpgradeEnabled then
        task.spawn(function()
            local player = game.Players.LocalPlayer
            local StatEvent = player.PlayerGui.Button.Stats_Frame["{}"].Event

            while autoUpgradeEnabled do
                StatEvent:FireServer(selectedStat, amountToUpgrade)
                task.wait(1)
            end
        end)
    end
end)
----------------------------------------------------------------------------------------------------------------
local Players = game:GetService("Players")
local VirtualInputManager = game:GetService("VirtualInputManager")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer

local toggleGui = Instance.new("ScreenGui")
toggleGui.Name = "ToggleUI"
toggleGui.Parent = CoreGui

local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0, 60, 0, 20)
toggleButton.Position = UDim2.new(0.5, 0, 0.5, 0)
toggleButton.Text = "Open UI"
toggleButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.Parent = toggleGui
toggleButton.AutoButtonColor = false

local isOpen = false

local function pressCtrlRight()
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.RightControl, false, game)
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.RightControl, false, game)
end

local dragging = false
local offset = Vector2.new(0,0)
local justDragged = false

toggleButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        justDragged = false
        local mousePos = UserInputService:GetMouseLocation()
        local guiPos = toggleButton.AbsolutePosition
        offset = mousePos - Vector2.new(guiPos.X, guiPos.Y)
    end
end)

toggleButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement and dragging then
        justDragged = true
    end
end)

toggleButton.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

toggleButton.MouseButton1Click:Connect(function()
    if justDragged then return end
    isOpen = not isOpen
    if isOpen then
        toggleButton.Text = "Close UI"
    else
        toggleButton.Text = "Open UI"
    end
    pressCtrlRight()
end)

RunService.RenderStepped:Connect(function()
    if dragging then
        local mousePos = UserInputService:GetMouseLocation()
        toggleButton.Position = UDim2.new(
            0, mousePos.X - offset.X,
            0, mousePos.Y - offset.Y
        )
    end
end)

SaveManager:LoadAutoloadConfig()
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")
InterfaceManager:BuildInterfaceSection(Setting)
SaveManager:BuildConfigSection(Setting)
Window:SelectTab(1)
