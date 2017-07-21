# KeyManager

A simple key manager for Gideros

KeyManager is a class to manage key presses in Gideros. With it you can register a callback to be executed when a key is pressed or released, and determine the key held state of any key at any time.

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
