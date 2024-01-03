-- memory.lua


local function findChild(path)
    local parts = string.split(path, ".")
    local current = workspace
    for _, part in ipairs(parts) do
        current = current[part]
        if not current then
            return nil
        end
    end
    return current
end


local function printPosition(obj, name)
    if obj then
        print(name .. " Position:", obj.Position)
    else
        print(name .. " does not exist.")
    end
end


local serverSoccerBall = findChild("FootballField.ServerSoccerBall")
local soccerBall1 = findChild("FootballField.SoccerBall")
local soccerBall2 = findChild("FootballField2.SoccerBall2")


print("========== WA Memory Loaded Successfully! ==========")
printPosition(serverSoccerBall, "Server Soccer Ball")
printPosition(soccerBall1, "Soccer Ball 1")
printPosition(soccerBall2, "Soccer Ball 2")
print("=====================================================")
