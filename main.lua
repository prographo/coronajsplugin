
local widget = require( "widget" )
local json = require( "json" )
local myplugin = require("myplugin")

local label = display.newText( "output", 50, 220, native.systemFont, 16 )
label.x = display.contentCenterX



local setData = function()

  local data = { key1='jack', key2=123 }  
	myplugin.set(data)
  label.txt = "We set to: "..data.key1
  
end

local getData = function()

	local data = myplugin.get()
  
	if data and data.key1 then
		label.text = "Data is: "..data.key1
	end

end

local function eventListener( event ) 
  local txt = "Incoming: ".. event.key1
  print (txt)
  label.text = txt
end

myplugin.addEventListener( eventListener )



widget.newButton { onRelease = setData, left=60, top=60, width=200, height=50, defaultFile = "buttonRed.png", overFile = "buttonRedOver.png", label = "Save Data in JS", emboss = true,labelColor = { default={ 1, 1, 1 }, over={ 0, 0, 0, 0.5 } } }
widget.newButton { onRelease = getData, left=60, top=120, width=200, height=50, defaultFile = "buttonRed.png", overFile = "buttonRedOver.png", label = "Read Saved Data", emboss = true, labelColor = { default={ 1, 1, 1 }, over={ 0, 0, 0, 0.5 } } }

