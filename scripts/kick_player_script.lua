-- Kick Player Script

local Players = game:GetService("Players")

local function kickPlayer(playerName)
    local player = Players:FindFirstChild(playerName)
    if player then
        player:Kick("You have been kicked by an administrator.")
    else
        warn("Player " .. playerName .. " not found.")
    end
end

-- Example usage: kickPlayer("PlayerName")