luanet.load_assembly("System.Windows.Forms")
local this = {}
local newLabel = luanet.import_type("System.Windows.Forms.Label")
function this.New()
    return newLabel()
end
return this
