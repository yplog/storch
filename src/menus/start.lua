function startButton()
  love.graphics.rectangle('fill', 100, 500, 100, 30)
  love.graphics.print({{0, 0, 0}, 'Start'}, 130, 509)
end

function optionButton() 
  love.graphics.rectangle('fill', 250, 500, 100, 30)
  love.graphics.print({{0, 0, 0}, 'Options'}, 280, 509)
end

function exitButton() 
  love.graphics.rectangle('fill', 400, 500, 100, 30)
  love.graphics.print({{0, 0, 0}, 'Exit'}, 420, 509)
end