luanet.load_assembly("System.Drawing")
local this = {}
local newPoint = luanet.import_type("System.Drawing.Point")
local newSize = luanet.import_type("System.Drawing.Size")
function this.Size(width, height)
    return newSize(width, height)
end
function this.Point(x, y)
    return newPoint(x, y)
end
return this
