Grid = {}

function Grid.new(fill, x, y)
  local self = {}

  self.x = x
  self.y = y
  self.gridCountX = math.floor(x / 50) + 1
  self.gridCountY = math.floor(y / 50) + 1
  self.fill = fill
  self.drawX = 50
  self.drawY = 50

  function self.draw()
    -- love.graphics.rectangle('line', x, y, 50, 50)
    love.graphics.rectangle(self.fill, self.x, self.y, self.drawX, self.drawY)    
  end

  return self
end