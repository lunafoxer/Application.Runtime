luanet.load_assembly("System.Windows.Forms") --���ء�Forms�����
local this = {}
local newForm = luanet.import_type("System.Windows.Forms.Form") --���ء�Form����
this.FormStartPosition = luanet.import_type("System.Windows.Forms.FormStartPosition")
this.FormWindowState = luanet.import_type("System.Windows.Forms.FormWindowState")
this.FormBorderStyle = luanet.import_type("System.Windows.Forms.FormBorderStyle")
this.ImageLayout = luanet.import_type("System.Windows.Forms.ImageLayout")
this.DialogResult = luanet.import_type("System.Windows.Forms.DialogResult")
function this.New()
    return newForm()
end
return this
