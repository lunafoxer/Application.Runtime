luanet.load_assembly("System.Windows.Forms")
local this = {}
local newComboBox = luanet.import_type("System.Windows.Forms.ComboBox")
this.ComboBoxStyle = luanet.import_type("System.Windows.Forms.ComboBoxStyle")
function this.New(width, height, x, y)
    if (width == nil or height == nil or (width == 0 and height == 0)) then
        return newComboBox()
    elseif (width ~= nil and height ~= nil and (x == nil or y == nil)) then
        local Size = luanet.import_type("System.Drawing.Size")
        local mComboBox = newComboBox()
        mComboBox.Size = Size(width, height)
        return mComboBox
    elseif (width ~= nil and height ~= nil and x ~= nil and y ~= nil) then
        local Point = luanet.import_type("System.Drawing.Point")
        local Size = luanet.import_type("System.Drawing.Size")
        local mComboBox = newComboBox()
        mComboBox.Size = Size(width, height)
        mComboBox.Location = Point(x, y)
        return mComboBox
    end
end
return this
