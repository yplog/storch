Grid = {}

function Grid.new(fill, x, y)
  local self = {}

  self.fill = fill
  self.x = x
  self.y = y
  self.gridCountX = math.floor(x / 50) + 1
  self.gridCountY = math.floor(y / 50) + 1
  self.drawX = 50
  self.drawY = 50

  function self.draw()
    love.graphics.rectangle(self.fill, self.x, self.y, self.drawX, self.drawY)    
  end

  return self
end