require('src.menus.start')

function love.load()
  gameState = 0
end

function love.update(dt)
  x, y = love.mouse.getPosition()
  
  if gameState == 0 then
    if (x >= 100 and x <= 200) and (y >= 500 and y <= 530) then
      if love.mouse.isDown(1) then
        gameState = 1
      end	
    end
  
    if (x >= 250 and x <= 350) and (y >= 500 and y <= 530) then
      if love.mouse.isDown(1) then
        gameState = 2
      end	
    end
    
    if (x >= 400 and x <= 500) and (y >= 500 and y <= 530) then
      if love.mouse.isDown(1) then
        love.event.quit()
      end	
    end
  end
  
  if love.keyboard.isDown("escape") then
    gameState = 0
  end
end

function love.draw()
  if gameState == 0 then
    love.graphics.print(startMenu)
    startButton()
    optionButton()
    exitButton()
  elseif gameState == 1 then
    love.graphics.print("Game Screen")
    local y = 0
    for y = 0, 550 do 
      if 0 == (y % 50) then
        for x = 0, 750 do
          if 0 == (x % 50) then
            love.graphics.rectangle('line', x, y, 50, 50)
          end
        end
      end
    end
  elseif gameState == 2 then
    love.graphics.print("Options Screen")
  end
end