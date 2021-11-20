

local function genIcon(cStr)


	local c = require("hs.canvas")
	local g = require("hs.geometry")
	local st = require("hs.styledtext")


	local cStr = cStr
	local fSize = 50

	local attr = {}
	attr.color =  {hex="#000000"}
	attr.font = {}
	attr.font.size = fSize
	--attr.font.name = "AppleColorEmoji"
	attr.paragraphStyle = {}
	local ps = attr.paragraphStyle
	ps.alignment = "center"

	local t = st.new(cStr,attr)
	local e = {}
	e.type = "text"
	e.text = t
	local f = g.new(c.new(g.rect(0,0,0,0).table):appendElements(e):minimumTextSize(1,t))


	local k = c.new(f.table):appendElements({type="rectangle"})

	local gO = g.rect(0,0,f.w,f.h)
	--print(gO)
	local gV = math.max(f.w,f.h)
	--print(gV)
	local fP = g.new(0,0,gV,gV)
	-- adding a red rectangle to the background can be useful
	--local k = c.new(fP.table):appendElements({type="rectangle"})
	local k = c.new(fP.table)
	gO.center = fP.center
	e.frame = gO.table
	k:appendElements(e)
	img = k:imageFromCanvas()

	return img


end

local moonIcon = genIcon("🌙"):copy():size({w=20,h=20}, false)


return moonIcon