local this = {}
-- 摘要:        --     从键值提取修饰符的位屏蔽。
this.Modifiers = -65536
-- 摘要:        --     没有按任何键。
this.None = 0
-- 摘要:        --     鼠标左按钮。
this.LButton = 1
-- 摘要:        --     鼠标右按钮。
this.RButton = 2
-- 摘要:        --     Cancel 键。
this.Cancel = 3
-- 摘要:        --     鼠标中按钮（三个按钮的鼠标）。
this.MButton = 4
-- 摘要:        --     第一个 X 鼠标按钮（五个按钮的鼠标）。
this.XButton1 = 5
-- 摘要:        --     第二个 X 鼠标按钮（五个按钮的鼠标）。
this.XButton2 = 6
-- 摘要:        --     Backspace 键。
this.Back = 8
-- 摘要:        --     Tab 键。
this.Tab = 9
-- 摘要:        --     LINEFEED 键。
this.LineFeed = 10
-- 摘要:        --     Clear 键。
this.Clear = 12
-- 摘要:        --     Return 键。
this.Return = 13
-- 摘要:        --     Enter 键。
this.Enter = 13
-- 摘要:        --     Shift 键。
this.ShiftKey = 16
-- 摘要:        --     CTRL 键。
this.ControlKey = 17
-- 摘要:        --     Alt 键。
this.Menu = 18
-- 摘要:        --     Pause 键。
this.Pause = 19
-- 摘要:        --     CAPS LOCK 键。
this.Capital = 20
-- 摘要:        --     CAPS LOCK 键。
this.CapsLock = 20
-- 摘要:        --     IME Kana 模式键。
this.KanaMode = 21
-- 摘要:        --     IME Hanguel 模式键。（为了保持兼容性而设置；使用 HangulMode）
this.HanguelMode = 21
-- 摘要:        --     IME Hangul 模式键。
this.HangulMode = 21
-- 摘要:        --     IME Junja 模式键。
this.JunjaMode = 23
-- 摘要:        --     IME 最终模式键。
this.FinalMode = 24
-- 摘要:        --     IME Hanja 模式键。
this.HanjaMode = 25
-- 摘要:        --     IME Kanji 模式键。
this.KanjiMode = 25
-- 摘要:        --     Esc 键。
this.Escape = 27
-- 摘要:        --     IME 转换键。
this.IMEConvert = 28
-- 摘要:        --     IME 非转换键。
this.IMENonconvert = 29
-- 摘要:        --     IME 接受键，替换 System.Windows.Forms.Keys.IMEAceept。
this.IMEAccept = 30
-- 摘要:        --     IME 接受键。已过时，请改用 System.Windows.Forms.Keys.IMEAccept。
this.IMEAceept = 30
-- 摘要:        --     IME 模式更改键。
this.IMEModeChange = 31
-- 摘要:        --     空格键。
this.Space = 32
-- 摘要:        --     Page Up 键。
this.Prior = 33
-- 摘要:        --     Page Up 键。
this.PageUp = 33
-- 摘要:        --     PAGE DOWN 键。
this.Next = 34
-- 摘要:        --     PAGE DOWN 键。
this.PageDown = 34
-- 摘要:        --     End 键。
this.End = 35
-- 摘要:        --     Home 键。
this.Home = 36
-- 摘要:        --     向左键。
this.Left = 37
-- 摘要:        --     向上键。
this.Up = 38
-- 摘要:        --     向右键。
this.Right = 39
-- 摘要:        --     向下键。
this.Down = 40
-- 摘要:        --     Select 键。
this.Select = 41
-- 摘要:        --     Print 键。
this.Print = 42
-- 摘要:        --     EXECUTE 键。
this.Execute = 43
-- 摘要:        --     Print Screen 键。
this.Snapshot = 44
-- 摘要:        --     Print Screen 键。
this.PrintScreen = 44
-- 摘要:        --     INS 键。
this.Insert = 45
-- 摘要:        --     DEL 键。
this.Delete = 46
-- 摘要:        --     HELP 键。
this.Help = 47
-- 摘要:        --     0 键。
this.D0 = 48
-- 摘要:        --     1 键。
this.D1 = 49
-- 摘要:        --     2 键。
this.D2 = 50
-- 摘要:        --     3 键。
this.D3 = 51
-- 摘要:        --     4 键。
this.D4 = 52
-- 摘要:        --     5 键。
this.D5 = 53
-- 摘要:        --     6 键。
this.D6 = 54
-- 摘要:        --     7 键。
this.D7 = 55
-- 摘要:        --     8 键。
this.D8 = 56
-- 摘要:        --     9 键。
this.D9 = 57
-- 摘要:        --     A 键。
this.A = 65
-- 摘要:        --     B 键。
this.B = 66
-- 摘要:        --     C 键。
this.C = 67
-- 摘要:        --     D 键。
this.D = 68
-- 摘要:        --     E 键。
this.E = 69
-- 摘要:        --     F 键。
this.F = 70
-- 摘要:        --     G 键。
this.G = 71
-- 摘要:        --     H 键。
this.H = 72
-- 摘要:        --     I 键。
this.I = 73
-- 摘要:        --     J 键。
this.J = 74
-- 摘要:        --     K 键。
this.K = 75
-- 摘要:        --     L 键。
this.L = 76
-- 摘要:        --     M 键。
this.M = 77
-- 摘要:        --     N 键。
this.N = 78
-- 摘要:        --     O 键。
this.O = 79
-- 摘要:        --     P 键。
this.P = 80
-- 摘要:        --     Q 键。
this.Q = 81
-- 摘要:        --     R 键。
this.R = 82
-- 摘要:        --     S 键。
this.S = 83
-- 摘要:        --     T 键。
this.T = 84
-- 摘要:        --     U 键。
this.U = 85
-- 摘要:        --     V 键。
this.V = 86
-- 摘要:        --     W 键。
this.W = 87
-- 摘要:        --     X 键。
this.X = 88
-- 摘要:        --     Y 键。
this.Y = 89
-- 摘要:        --     Z 键。
this.Z = 90
-- 摘要:        --     左 Windows 徽标键（Microsoft Natural Keyboard，人体工程学键盘）。
this.LWin = 91
-- 摘要:        --     右 Windows 徽标键（Microsoft Natural Keyboard，人体工程学键盘）。
this.RWin = 92
-- 摘要:        --     应用程序键（Microsoft Natural Keyboard，人体工程学键盘）。
this.Apps = 93
-- 摘要:        --     计算机睡眠键。
this.Sleep = 95
-- 摘要:        --     数字键盘上的 0 键。
this.NumPad0 = 96
-- 摘要:        --     数字键盘上的 1 键。
this.NumPad1 = 97
-- 摘要:        --     数字键盘上的 2 键。
this.NumPad2 = 98
-- 摘要:        --     数字键盘上的 3 键。
this.NumPad3 = 99
-- 摘要:        --     数字键盘上的 4 键。
this.NumPad4 = 100
-- 摘要:        --     数字键盘上的 5 键。
this.NumPad5 = 101
-- 摘要:        --     数字键盘上的 6 键。
this.NumPad6 = 102
-- 摘要:        --     数字键盘上的 7 键。
this.NumPad7 = 103
-- 摘要:        --     数字键盘上的 8 键。
this.NumPad8 = 104
-- 摘要:        --     数字键盘上的 9 键。
this.NumPad9 = 105
-- 摘要:        --     乘号键。
this.Multiply = 106
-- 摘要:        --     加号键。
this.Add = 107
-- 摘要:        --     分隔符键。
this.Separator = 108
-- 摘要:        --     减号键。
this.Subtract = 109
-- 摘要:        --     句点键。
this.Decimal = 110
-- 摘要:        --     除号键。
this.Divide = 111
-- 摘要:        --     F1 键。
this.F1 = 112
-- 摘要:        --     F2 键。
this.F2 = 113
-- 摘要:        --     F3 键。
this.F3 = 114
-- 摘要:        --     F4 键。
this.F4 = 115
-- 摘要:        --     F5 键。
this.F5 = 116
-- 摘要:        --     F6 键。
this.F6 = 117
-- 摘要:        --     F7 键。
this.F7 = 118
-- 摘要:        --     F8 键。
this.F8 = 119
-- 摘要:        --     F9 键。
this.F9 = 120
-- 摘要:        --     F10 键。
this.F10 = 121
-- 摘要:        --     F11 键。
this.F11 = 122
-- 摘要:        --     F12 键。
this.F12 = 123
-- 摘要:        --     F13 键。
this.F13 = 124
-- 摘要:        --     F14 键。
this.F14 = 125
-- 摘要:        --     F15 键。
this.F15 = 126
-- 摘要:        --     F16 键。
this.F16 = 127
-- 摘要:        --     F17 键。
this.F17 = 128
-- 摘要:        --     F18 键。
this.F18 = 129
-- 摘要:        --     F19 键。
this.F19 = 130
-- 摘要:        --     F20 键。
this.F20 = 131
-- 摘要:        --     F21 键。
this.F21 = 132
-- 摘要:        --     F22 键。
this.F22 = 133
-- 摘要:        --     F23 键。
this.F23 = 134
-- 摘要:        --     F24 键。
this.F24 = 135
-- 摘要:
--     NUM LOCK 键。
this.NumLock = 144
-- 摘要:        --     Scroll Lock 键。
this.Scroll = 145
-- 摘要:        --     左 Shift 键。
this.LShiftKey = 160
-- 摘要:        --     右 Shift 键。
this.RShiftKey = 161
-- 摘要:        --     左 Ctrl 键。
this.LControlKey = 162
-- 摘要:        --     右 Ctrl 键。
this.RControlKey = 163
-- 摘要:        --     左 Alt 键。
this.LMenu = 164
-- 摘要:        --     右 Alt 键。
this.RMenu = 165
-- 摘要:        --     浏览器后退键（Windows 2000 或更高版本）。
this.BrowserBack = 166
-- 摘要:        --     浏览器前进键（Windows 2000 或更高版本）。
this.BrowserForward = 167
-- 摘要:        --     浏览器刷新键（Windows 2000 或更高版本）。
this.BrowserRefresh = 168
-- 摘要:        --     浏览器停止键（Windows 2000 或更高版本）。
this.BrowserStop = 169
-- 摘要:        --     浏览器搜索键（Windows 2000 或更高版本）。
this.BrowserSearch = 170
-- 摘要:        --     浏览器收藏夹键（Windows 2000 或更高版本）。
this.BrowserFavorites = 171
-- 摘要:        --     浏览器主页键（Windows 2000 或更高版本）。
this.BrowserHome = 172
-- 摘要:        --     静音键（Windows 2000 或更高版本）。
this.VolumeMute = 173
-- 摘要:        --     减小音量键（Windows 2000 或更高版本）。
this.VolumeDown = 174
-- 摘要:        --     增大音量键（Windows 2000 或更高版本）。
this.VolumeUp = 175
-- 摘要:        --     媒体下一曲目键（Windows 2000 或更高版本）。
this.MediaNextTrack = 176
-- 摘要:        --     媒体上一曲目键（Windows 2000 或更高版本）。
this.MediaPreviousTrack = 177
-- 摘要:        --     媒体停止键（Windows 2000 或更高版本）。
this.MediaStop = 178
-- 摘要:        --     媒体播放暂停键（Windows 2000 或更高版本）。
this.MediaPlayPause = 179
-- 摘要:        --     启动邮件键（Windows 2000 或更高版本）。
this.LaunchMail = 180
-- 摘要:        --     选择媒体键（Windows 2000 或更高版本）。
this.SelectMedia = 181
-- 摘要:        --     启动应用程序一键（Windows 2000 或更高版本）。
this.LaunchApplication1 = 182
-- 摘要:        --     启动应用程序二键（Windows 2000 或更高版本）。
this.LaunchApplication2 = 183
-- 摘要:        --     美式标准键盘上的 OEM 分号键（Windows 2000 或更高版本）。
this.OemSemicolon = 186
-- 摘要:        --     OEM 1 键。
this.Oem1 = 186
-- 摘要:        --     任何国家/地区键盘上的 OEM 加号键（Windows 2000 或更高版本）。
this.Oemplus = 187
-- 摘要:        --     任何国家/地区键盘上的 OEM 逗号键（Windows 2000 或更高版本）。
this.Oemcomma = 188
-- 摘要:        --     任何国家/地区键盘上的 OEM 减号键（Windows 2000 或更高版本）。
this.OemMinus = 189
-- 摘要:        --     任何国家/地区键盘上的 OEM 句点键（Windows 2000 或更高版本）。
this.OemPeriod = 190
-- 摘要:        --     美式标准键盘上的 OEM 问号键（Windows 2000 或更高版本）。
this.OemQuestion = 191
-- 摘要:        --     OEM 2 键。
this.Oem2 = 191
-- 摘要:        --     美式标准键盘上的 OEM 波形符键（Windows 2000 或更高版本）。
this.Oemtilde = 192
-- 摘要:        --     OEM 3 键。
this.Oem3 = 192
-- 摘要:        --     美式标准键盘上的 OEM 左括号键（Windows 2000 或更高版本）。
this.OemOpenBrackets = 219
-- 摘要:        --     OEM 4 键。
this.Oem4 = 219
-- 摘要:        --     美式标准键盘上的 OEM 管道键（Windows 2000 或更高版本）。
this.OemPipe = 220
-- 摘要:        --     OEM 5 键。
this.Oem5 = 220
-- 摘要:        --     美式标准键盘上的 OEM 右括号键（Windows 2000 或更高版本）。
this.OemCloseBrackets = 221
-- 摘要:        --     OEM 6 键。
this.Oem6 = 221
-- 摘要:        --     美式标准键盘上的 OEM 单/双引号键（Windows 2000 或更高版本）。
this.OemQuotes = 222
-- 摘要:        --     OEM 7 键。
this.Oem7 = 222
-- 摘要:        --     OEM 8 键。
this.Oem8 = 223
-- 摘要:        --     RT 102 键的键盘上的 OEM 尖括号或反斜杠键（Windows 2000 或更高版本）。
this.OemBackslash = 226
-- 摘要:        --     OEM 102 键。
this.Oem102 = 226
-- 摘要:        --     Process Key 键。
this.ProcessKey = 229
-- 摘要:        --     用于将 Unicode 字符当作键击传递。Packet 键值是用于非键盘输入法的 32 位虚拟键值的低位字。
this.Packet = 231
-- 摘要:        --     ATTN 键。
this.Attn = 246
-- 摘要:        --     Crsel 键。
this.Crsel = 247
-- 摘要:        --     Exsel 键。
this.Exsel = 248
-- 摘要:        --     ERASE EOF 键。
this.EraseEof = 249
-- 摘要:        --     PLAY 键。
this.Play = 250
-- 摘要:        --     ZOOM 键。
this.Zoom = 251
-- 摘要:        --     保留以备将来使用的常数。
this.NoName = 252
-- 摘要:        --     PA1 键。
this.Pa1 = 253
-- 摘要:        --     Clear 键。
this.OemClear = 254
-- 摘要:        --     从键值提取键代码的位屏蔽。
this.KeyCode = 65535
-- 摘要:        --     Shift 修改键。
this.Shift = 65536
-- 摘要:        --     Ctrl 修改键。
this.Control = 131072
-- 摘要:        --     Alt 修改键。
this.Alt = 262144

function this.GetValue(keyname)
    return Keys_GetValue(keyname)
end
function this.GetName(keyid)
    return Keys_GetName(keyid)
end
function this.ShortcutKeys(key1, key2, key3)
    if (key1 == nil or key1 == 0 or key2 == nil or key2 == 0) then
        return Menu_ShortcutKeys()
    elseif (key3 == nil or key3 == 0) then
        return Menu_ShortcutKeys(tostring(key1) .. "," .. tostring(key2))
    else
        return Menu_ShortcutKeys(tostring(key1) .. "," .. tostring(key2) .. "," .. tostring(key3))
    end
end
return this
