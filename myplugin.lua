local lib
local platform = system.getInfo("platform")
if platform == 'html5' then
  print('HTML5')
	lib = require("myplugin_js")
else
  print('Not HTML5')

	local CoronaLibrary = require "CoronaLibrary"

	-- Create stub library for simulator
	lib = CoronaLibrary:new{ name='myplugin', publisherId='com.my' }

	local function defaultFunction()
		print( "WARNING: The '" .. lib.name .. "' library is not available on this platform." )
	end

	lib.set = defaultFunction
	lib.get = defaultFunction
	lib.addEventListener = defaultFunction
end


return lib