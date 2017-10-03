luanet.load_assembly("System.Windows.Forms") --加载“Forms”类库
local this = {}
local newForm = luanet.import_type("System.Windows.Forms.Form") --加载“Form”类
this.FormStartPosition = luanet.import_type("System.Windows.Forms.FormStartPosition")
this.FormWindowState = luanet.import_type("System.Windows.Forms.FormWindowState")
this.FormBorderStyle = luanet.import_type("System.Windows.Forms.FormBorderStyle")
this.ImageLayout = luanet.import_type("System.Windows.Forms.ImageLayout")
this.DialogResult = luanet.import_type("System.Windows.Forms.DialogResult")
function this.New()
    return newForm()
end
return this
