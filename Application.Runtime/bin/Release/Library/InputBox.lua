local this = {}
local InputFlag = false
this.Form = Include("Windows.Forms.Form")
this.Drawing = Include("Windows.Forms.Drawing")
this.Button = Include("Windows.Forms.Button")
this.Label = Include("Windows.Forms.Label")
this.TextBox = Include("Windows.Forms.TextBox")

function this.Button_OK_Click(sender, e)
    InputFlag = true
    this.Form_Input:Close()
end
function this.Button_Cancel_Click(sender, e)
    InputFlag = false
    this.Form_Input:Close()
end

this.Button_OK = this.Button.New()
this.Button_OK.Location = this.Drawing.Point(382, 12)
this.Button_OK.Name = "Button_OK"
this.Button_OK.Size = this.Drawing.Size(75, 28)
this.Button_OK.TabIndex = 1
this.Button_OK.Text = "确定"
this.Button_OK.UseVisualStyleBackColor = true
this.Button_OK.Click:Add(this.Button_OK_Click)

this.Button_Cancel = this.Button.New()
this.Button_Cancel.DialogResult = this.Form.DialogResult.Cancel
this.Button_Cancel.Location = this.Drawing.Point(382, 46)
this.Button_Cancel.Name = "Button_Cancel"
this.Button_Cancel.Size = this.Drawing.Size(75, 28)
this.Button_Cancel.TabIndex = 2
this.Button_Cancel.Text = "取消"
this.Button_Cancel.UseVisualStyleBackColor = true
this.Button_Cancel.Click:Add(this.Button_Cancel_Click)

this.Label_Information = this.Label.New()
this.Label_Information.AutoEllipsis = true
this.Label_Information.Location = this.Drawing.Point(12, 12)
this.Label_Information.Name = "Label_Information"
this.Label_Information.Size = this.Drawing.Size(364, 70)
this.Label_Information.TabIndex = 2

this.TextBox_Input = this.TextBox.New()
this.TextBox_Input.Location = this.Drawing.Point(12, 101)
this.TextBox_Input.Name = "TextBox_Input"
this.TextBox_Input.Size = this.Drawing.Size(445, 21)
this.TextBox_Input.TabIndex = 0

this.Form_Input = this.Form.New()
this.Form_Input.Size = this.Drawing.Size(487, 173)
this.Form_Input.FormBorderStyle = this.Form.FormBorderStyle.FixedSingle
this.Form_Input.MaximizeBox = false
this.Form_Input.MinimizeBox = false
this.Form_Input.Name = "Form_Input"
this.Form_Input.StartPosition = this.Form.FormStartPosition.CenterScreen

this.Form_Input.Controls:Add(this.TextBox_Input)
this.Form_Input.Controls:Add(this.Label_Information)
this.Form_Input.Controls:Add(this.Button_Cancel)
this.Form_Input.Controls:Add(this.Button_OK)
this.Form_Input.AcceptButton = this.Button_OK
this.Form_Input.CancelButton = this.Button_Cancel

function this.Show(info, title, default, passwordmode, position)
    if (info == "" or info == nil) then
        this.Label_Information.Text = "请输入："
    else
        this.Label_Information.Text = info
    end
    if (default == "" or default == nil) then
        this.TextBox_Input.Text = ""
    else
        this.TextBox_Input.Text = default
    end
    if (passwordmode == false or passwordmode == nil) then
        this.TextBox_Input.PasswordChar = ""
    else
        this.TextBox_Input.PasswordChar = tochar("*")
    end
    if (title == "" or title == nil) then
        this.Form_Input.Text = "Application"
    else
        this.Form_Input.Text = title
    end
    if position ~= nil then
        this.Form_Input.StartPosition = position
    end
    this.Form_Input:ResumeLayout(false)
    this.Form_Input:PerformLayout()
    this.Form_Input:ShowDialog()
    if (InputFlag == true) then
        return this.TextBox_Input.Text, InputFlag
    else
        return nil, InputFlag
    end
end
return this
