game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Core["Idle Tracking"].Enabled = false
Player = game:GetService('Players').LocalPlayer
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
        local args5 = {
            [1] = "Lucky Dice II",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("LuckyDice_Craft"):InvokeServer(unpack(args5))
        task.wait(5)
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

        local args6 = {
            [1] = "Mega Lucky Dice",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("LuckyDice_Craft"):InvokeServer(unpack(args6))

        local args8 = {
            [1] = "Mega Lucky Dice II",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("LuckyDice_Craft"):InvokeServer(unpack(args8))

        local args9 = {
            [1] = "Mega Lucky Dice II",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("LuckyDice_ConsumeMega"):InvokeServer(unpack(args9))

        task.wait(15)
    end
end)

-- Auto Buy Upgrades
while true do
    task.wait(1200) -- 20 minutes (1200 seconds)
    local args = {
        [1] = "First",
        [2] = "RNGEggLuck"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Rng_PurchaseUpgrade"):InvokeServer(unpack(args))
    
    local args2 = {
        [1] = "First",
        [2] = "RNGHatchSpeed"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Rng_PurchaseUpgrade"):InvokeServer(unpack(args2))
    
    
    local args3 = {
        [1] = "First",
        [2] = "RNGBonusLuck"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Rng_PurchaseUpgrade"):InvokeServer(unpack(args3))
    
    local args4 = {
        [1] = "First",
        [2] = "RNGHugeLuck"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Rng_PurchaseUpgrade"):InvokeServer(unpack(args4))
end
