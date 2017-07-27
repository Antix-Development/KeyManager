
KeyManager = Core.class()

function KeyManager:init()

  self.keys = {}
  
  stage:addEventListener(Event.KEY_DOWN, function(e) -- key down listener
    local keys = self.keys
    local k = keys[e.keyCode]
    if k then
      k.state = true
      if k.onDown then k.onDown() end
    end
  end)

  stage:addEventListener(Event.KEY_UP, function(e) -- key up listener
    local keys = self.keys
    local k = keys[e.keyCode]
    if k then
      k.state = false
      if k.onUp then k.onUp() end
    end
  end)

end

function KeyManager:registerDown(k, f) -- register key down callback
  local keys = self.keys
  if keys[k] then
    keys[k].onDown = f
  else
    keys[k] = {state = false, onDown = f}
  end
end

function KeyManager:registerUp(k, f) -- register key up callback
  local keys = self.keys
  if keys[k] then
    keys[k].onUp = f
  else
    keys[k] = {state = false, onUp = f}
  end
end

function KeyManager:state(k) -- return state of key
  local keys = self.keys
  if keys[k] then
    return keys[k].state
  else
    keys[k] = {state = false}
  end
  return false
end
