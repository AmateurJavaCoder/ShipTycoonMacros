for _, tycoons in pairs(game.Workspace["Ship Tycoon 2"].Tycoons:GetChildren()) do 
    for _, purchase in pairs(tycoons.Purchases:GetChildren()) do
        if string.find(string.upper(purchase.Name), "VIP") or string.find(string.upper(purchase.Name), "BEDROCK") or string.find(string.upper(purchase.Name), "AZURITE") or string.find(string.upper(purchase.Name), "ORPIMENT") or string.find(string.upper(purchase.Name), "TURBO") or string.find(string.upper(purchase.Name), "ENHANCED") then 
            for i, v in pairs(purchase:GetDescendants() ) do
                if v:IsA("BasePart") or v:IsA("UnionOperation") then v.Position += Vector3.new(0,1000,0) 
                end 
            end 
        end 
    end 
    for _, purchase in pairs(tycoons.Buttons:GetChildren()) do 
        if string.find(string.upper(purchase.Name), "VIP") or string.find(string.upper(purchase.Name), "BEDROCK") or string.find(string.upper(purchase.Name), "AZURITE") or string.find(string.upper(purchase.Name), "ORPIMENT") or string.find(string.upper(purchase.Name), "TURBO") or string.find(string.upper(purchase.Name), "ENHANCED") then 
            purchase.Head.Position += Vector3.new(0,1000,0)
        end 
    end 

    local extra = {"OrpimentCon", "BedrockCon", "AzuriteCon"}
    for i, v in pairs(extra) do
        tycoons.Purchases:FindFirstChild(v).Position += Vector3.new(0,1000,0)
    end

end
