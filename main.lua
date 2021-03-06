require('src.menus.start')
require('src.grid')

function love.load()
  gameState = 0

  gridArea = {}
  selectedGrid = nil
end

function love.update(dt)
  if gameState == 0 then
    local x, y = love.mouse.getPosition()

    if love.mouse.isDown(1) then
      if (x >= 100 and x <= 200) and (y >= 500 and y <= 530) then
        gameState = 1
      elseif (x >= 250 and x <= 350) and (y >= 500 and y <= 530) then
        gameState = 2
      elseif (x >= 400 and x <= 500) and (y >= 500 and y <= 530) then
        love.event.quit()
      end
    end
  end

  if gameState == 1 then
    local selectedX = math.floor(love.mouse.getX() / 50) + 1
    local selectedY = math.floor(love.mouse.getY() / 50) + 1
    
    if love.mouse.isDown(1) then
      for key = 0, #gridArea do
        if gridArea[key] ~= nil then
          if (gridArea[key].gridCountX == selectedX) and (gridArea[key].gridCountY == selectedY) then
            gridArea[key].fill = 'fill'
            selectedGrid = gridArea[key]
          end
        end
      end
    end
    
  end
  
  if love.keyboard.isDown("escape") then
    gameState = 0
  end
end

function love.draw()
  if gameState == 0 then
    startButton()
    optionButton()
    exitButton()
  elseif gameState == 1 then
    for y = 0, 550 do
      if 0 == (y % 50) then
        for x = 0, 750 do
          if 0 == (x % 50) then
            g = Grid.new('line', x, y)
            g.draw()

            table.insert(gridArea, g)
          end
        end
      end
    end

    if selectedGrid ~= nil then
      selectedGrid.draw()
    end
    
  elseif gameState == 2 then
    love.graphics.print("Options Screen")
  end
end