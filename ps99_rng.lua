if not CraftDices then 
    CraftDices = {'Lucky Dice 2', 'Mega Lucky Dice 2', 'Mega Lucky Dice 1'}
end
if not ConsumeDices then
    ConsumeDices = {'Mega Lucky Dice 2'}
end
if not Upgrades then
    Upgrades = {'ExtraEgg', 'EggLuck', 'HatchSpeed', 'BonusLuck', 'HugeLuck'}
end


local realClick = loadstring(game:HttpGet("https://raw.githubusercontent.com/buang5516/buanghub/main/realclick-obf.lua"))()

Player = game:GetService('Players').LocalPlayer


    Player.PlayerScripts.Scripts.Core["Idle Tracking"].Enabled = false
    Player.Character:SetPrimaryPartCFrame(CFrame.new(180.073, 17.594, -135.081))
    repeat task.wait(0.2) until Player.PlayerGui._MISC.RngUI.Enabled == true

    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
    repeat
        realClick(Player.PlayerGui._MISC.RngUI.Button.AutoRoll)
        task.wait(1)
    until Player.PlayerGui._MISC.RngUI.Button.AutoRoll:FindFirstChild('GreenGradient') ~= nil;

    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
    VirtualUser = game:GetService('VirtualUser')
    Player.Idled:Connect(function()
        VirtualUser:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        wait(0.25)
        VirtualUser:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
    end)

    task.spawn(function()
        while true do
            for i = 1, 6, 1 do 
                local args = {
                    [1] = "LuckyDiceMerchant",
                    [2] = i
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Merchant_RequestPurchase"):InvokeServer(unpack(args))
                task.wait(1)
            end
            if table.find(CraftDices, 'Lucky Dice 2') then
                local args5 = {
                    [1] = "Lucky Dice II",
                    [2] = 1
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("LuckyDice_Craft"):InvokeServer(unpack(args5))
            end

            if table.find(CraftDices, 'Lucky Dice 3') then
                local args5 = {
                    [1] = "Lucky Dice III",
                    [2] = 1
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("LuckyDice_Craft"):InvokeServer(unpack(args5))
            end

            task.wait(1)
        end
    end)

    task.spawn(function()
        while true do 
            for i = 1, 6, 1 do 
                local args = {
                    [1] = "LuckyDiceMerchant",
                    [2] = i
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Merchant_RequestPurchase"):InvokeServer(unpack(args))
                task.wait(1)
            end

            if table.find(CraftDices, 'Mega Lucky Dice 2') then 
                local args8 = {
                    [1] = "Mega Lucky Dice II",
                    [2] = 1
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("LuckyDice_Craft"):InvokeServer(unpack(args8))
            end

            if table.find(ConsumeDices, 'Mega Lucky Dice 2') then
                local args9 = {
                    [1] = "Mega Lucky Dice II",
                    [2] = 1
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("LuckyDice_ConsumeMega"):InvokeServer(unpack(args9))
            end

            if table.find(ConsumeDices, 'Mega Lucky Dice 1') then
                local argsa9 = {
                    [1] = "Mega Lucky Dice",
                    [2] = 1
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("LuckyDice_ConsumeMega"):InvokeServer(unpack(argsa9))
            end

            if table.find(CraftDices, 'Mega Lucky Dice 1') then
                local args6 = {
                    [1] = "Mega Lucky Dice",
                    [2] = 1
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("LuckyDice_Craft"):InvokeServer(unpack(args6))
            end

            if table.find(CraftDices, 'Fire Dice') then 
                local args7 = {
                    [1] = "Fire Dice",
                    [2] = 1
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("LuckyDice_Craft"):InvokeServer(unpack(args7))
            end

            if table.find(ConsumeDices, 'Lucky Dice') then 
                local argas = {
                    [1] = 1
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("LuckyDice_Consume"):InvokeServer(unpack(argas))
            end

            if table.find(ConsumeDices, 'Lucky Dice 2') then 
                local args = {
                    [1] = 1
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("LuckyDiceII_Consume"):InvokeServer(unpack(args))
            end

            if table.find(ConsumeDices, 'Lucky Dice 3') then
                local args = {
                    [1] = 1
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("LuckyDiceIII_Consume"):InvokeServer(unpack(args))
            end

            if table.find(ConsumeDices, 'Fire Dice') then
                local argggs = {
                    [1] = 1
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("FireDice_Consume"):InvokeServer(unpack(argggs))
            end

            task.wait(15)
        end
    end)

    while true do
        task.wait(1200)

        if table.find(Upgrades, 'ExtraEgg') then
            local arg = {
                [1] = "First",
                [2] = "RNGExtraEgg"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Rng_PurchaseUpgrade"):InvokeServer(unpack(arg))
        end

        if table.find(Upgrades, 'EggLuck') then
            local args = {
                [1] = "First",
                [2] = "RNGEggLuck"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Rng_PurchaseUpgrade"):InvokeServer(unpack(args))
        end 

        if table.find(Upgrades, 'HatchSpeed') then
            local args2 = {
                [1] = "First",
                [2] = "RNGHatchSpeed"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Rng_PurchaseUpgrade"):InvokeServer(unpack(args2))
        end
        
        if table.find(Upgrades, 'BonusLuck') then
            local args3 = {
                [1] = "First",
                [2] = "RNGBonusLuck"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Rng_PurchaseUpgrade"):InvokeServer(unpack(args3))
        end

        if table.find(Upgrades, 'HugeLuck') then
            local args4 = {
                [1] = "First",
                [2] = "RNGHugeLuck"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Rng_PurchaseUpgrade"):InvokeServer(unpack(args4))
        end
    end
