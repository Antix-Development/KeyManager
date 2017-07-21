
```Lua

-- Example use

local keys = KeyManager.new()
 
keys:registerDown(KeyCode.E, function()
  print("e is down ")
end)
 
keys:registerUp(KeyCode.E, function()
  print("e is up ")
end)
 
local function onEnterFrame(e)
 
  if keys:state(KeyCode.A) then
    print("a held")
  end
 
end
 
stage:addEventListener(Event.ENTER_FRAME, onEnterFrame)
```
