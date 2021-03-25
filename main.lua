require('src.menus.deneme')

function love.load()
  gameState = 0
end

function love.update(dt)
  if love.keyboard.isDown("return") then
    gameState = 1
  elseif love.keyboard.isDown("escape") then
    gameState = 0
  end
end

function love.draw()
  if gameState == 0 then
    love.graphics.print(startMenu)
  elseif gameState == 1 then
    love.graphics.print("Game Screen")
  end
end