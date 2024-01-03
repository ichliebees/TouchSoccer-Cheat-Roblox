-- memory.lua

-- Function to find all instances of the specified child in the workspace
local function findChildren(path)
    local parts = string.split(path, ".")
    local current = workspace
    local instances = {}
    
    for _, part in ipairs(parts) do
        current = current:FindFirstChild(part)
        if not current then
            return {}
        end
    end
    
    -- If the path was found, collect all instances of the last part
    for _, instance in ipairs(current:GetChildren()) do
        table.insert(instances, instance)
    end
    
    return instances
end

-- Function to print position if the object exists, or a message if it doesn't
local function printPositions(objects, name)
    if #objects > 0 then
        print(name .. " Positions:")
        for _, obj in ipairs(objects) do
            print(obj.Name, obj.Position)
        end
    else
        print(name .. " does not exist.")
    end
end

-- Get all soccer balls using findChildren method
local serverSoccerBalls = findChildren("FootballField.ServerSoccerBall")
local soccerBalls1 = findChildren("FootballField.SoccerBall")
local soccerBalls2 = findChildren("FootballField2.SoccerBall2")

-- Print positions or messages
print("========== WA Memory Loaded Successfully! ==========")
printPositions(serverSoccerBalls, "Server Soccer Balls")
printPositions(soccerBalls1, "Soccer Balls 1")
printPositions(soccerBalls2, "Soccer Balls 2")
print("=====================================================")
