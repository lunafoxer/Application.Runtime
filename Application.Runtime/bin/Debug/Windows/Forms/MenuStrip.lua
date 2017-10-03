luanet.load_assembly("System.Windows.Forms")
local this = {}
local newMenuStrip = luanet.import_type("System.Windows.Forms.MenuStrip")
local newToolStripMenuItem = luanet.import_type("System.Windows.Forms.ToolStripMenuItem")
function this.New()
    return newMenuStrip()
end
function this.MenuItem()
    return newToolStripMenuItem()
end
function this.ToolStripMenuItem()
    return newToolStripMenuItem()
end
return this
