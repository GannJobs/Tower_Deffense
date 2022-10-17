function love.load()
    Classe = require "Suporte/classic"
    Vetor = require "Suporte/vector"
    
    require "Classes.Hero"
    hero = Hero()

    require "Classes.Map"
    map = Map()

    require "Classes.Enemy"
    enemy = Enemy()

    require "Classes.Tower"
    tower = Tower()


end

function love.update(dt)
    hero:update(dt)
    enemy:update(dt)
    map:update(dt)
    tower:update(dt)
end

function love.draw()
    map:draw()
    enemy:draw()
    tower:draw()
    hero:draw()
end

function Range(a, b, Va, Vb)
    local DistVetores = math.sqrt((Va.x-Vb.x)^2 + (Va.y-Vb.y)^2)
    if a + b >= DistVetores then
        return true
    else 
        return false
    end
end

function RangeSword(a, b, Vax, Vay, Vb)
    local DistVetores = math.sqrt((Vax-Vb.x)^2 + (Vay-Vb.y)^2)
    if a + b >= DistVetores then
        return true
    else 
        return false
    end
end