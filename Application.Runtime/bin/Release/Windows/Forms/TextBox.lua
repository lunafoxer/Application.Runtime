luanet.load_assembly("System.Windows.Forms")
local this = {}
local newTextBox = luanet.import_type("System.Windows.Forms.TextBox")
function this.New()
    return newTextBox()
end
return this
