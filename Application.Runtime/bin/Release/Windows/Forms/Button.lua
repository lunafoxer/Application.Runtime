luanet.load_assembly("System.Windows.Forms")
local this = {}
local newButton = luanet.import_type("System.Windows.Forms.Button")
function this.New()
    return newButton()
end
return this
