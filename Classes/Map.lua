Map = Classe:extend()

function Map:new()
    self.vidas = 10
end

function Map:update(dt)
    if enemy.x + enemy.raio < 0 then
        self.vidas = self.vidas - 1
    end
end

function Map:draw()
    love.graphics.print("Vidas Restantes: " .. self.vidas, 50, 50)
    love.graphics.line(0, love.graphics.getHeight()/2 - 75, love.graphics.getWidth(), love.graphics.getHeight()/2 - 75)
    love.graphics.line(0, love.graphics.getHeight()/2 + 75, love.graphics.getWidth(), love.graphics.getHeight()/2 + 75)
end