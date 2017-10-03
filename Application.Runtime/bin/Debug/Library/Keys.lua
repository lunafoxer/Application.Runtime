local this = {}
-- ժҪ:        --     �Ӽ�ֵ��ȡ���η���λ���Ρ�
this.Modifiers = -65536
-- ժҪ:        --     û�а��κμ���
this.None = 0
-- ժҪ:        --     �����ť��
this.LButton = 1
-- ժҪ:        --     ����Ұ�ť��
this.RButton = 2
-- ժҪ:        --     Cancel ����
this.Cancel = 3
-- ժҪ:        --     ����а�ť��������ť����꣩��
this.MButton = 4
-- ժҪ:        --     ��һ�� X ��갴ť�������ť����꣩��
this.XButton1 = 5
-- ժҪ:        --     �ڶ��� X ��갴ť�������ť����꣩��
this.XButton2 = 6
-- ժҪ:        --     Backspace ����
this.Back = 8
-- ժҪ:        --     Tab ����
this.Tab = 9
-- ժҪ:        --     LINEFEED ����
this.LineFeed = 10
-- ժҪ:        --     Clear ����
this.Clear = 12
-- ժҪ:        --     Return ����
this.Return = 13
-- ժҪ:        --     Enter ����
this.Enter = 13
-- ժҪ:        --     Shift ����
this.ShiftKey = 16
-- ժҪ:        --     CTRL ����
this.ControlKey = 17
-- ժҪ:        --     Alt ����
this.Menu = 18
-- ժҪ:        --     Pause ����
this.Pause = 19
-- ժҪ:        --     CAPS LOCK ����
this.Capital = 20
-- ժҪ:        --     CAPS LOCK ����
this.CapsLock = 20
-- ժҪ:        --     IME Kana ģʽ����
this.KanaMode = 21
-- ժҪ:        --     IME Hanguel ģʽ������Ϊ�˱��ּ����Զ����ã�ʹ�� HangulMode��
this.HanguelMode = 21
-- ժҪ:        --     IME Hangul ģʽ����
this.HangulMode = 21
-- ժҪ:        --     IME Junja ģʽ����
this.JunjaMode = 23
-- ժҪ:        --     IME ����ģʽ����
this.FinalMode = 24
-- ժҪ:        --     IME Hanja ģʽ����
this.HanjaMode = 25
-- ժҪ:        --     IME Kanji ģʽ����
this.KanjiMode = 25
-- ժҪ:        --     Esc ����
this.Escape = 27
-- ժҪ:        --     IME ת������
this.IMEConvert = 28
-- ժҪ:        --     IME ��ת������
this.IMENonconvert = 29
-- ժҪ:        --     IME ���ܼ����滻 System.Windows.Forms.Keys.IMEAceept��
this.IMEAccept = 30
-- ժҪ:        --     IME ���ܼ����ѹ�ʱ������� System.Windows.Forms.Keys.IMEAccept��
this.IMEAceept = 30
-- ժҪ:        --     IME ģʽ���ļ���
this.IMEModeChange = 31
-- ժҪ:        --     �ո����
this.Space = 32
-- ժҪ:        --     Page Up ����
this.Prior = 33
-- ժҪ:        --     Page Up ����
this.PageUp = 33
-- ժҪ:        --     PAGE DOWN ����
this.Next = 34
-- ժҪ:        --     PAGE DOWN ����
this.PageDown = 34
-- ժҪ:        --     End ����
this.End = 35
-- ժҪ:        --     Home ����
this.Home = 36
-- ժҪ:        --     �������
this.Left = 37
-- ժҪ:        --     ���ϼ���
this.Up = 38
-- ժҪ:        --     ���Ҽ���
this.Right = 39
-- ժҪ:        --     ���¼���
this.Down = 40
-- ժҪ:        --     Select ����
this.Select = 41
-- ժҪ:        --     Print ����
this.Print = 42
-- ժҪ:        --     EXECUTE ����
this.Execute = 43
-- ժҪ:        --     Print Screen ����
this.Snapshot = 44
-- ժҪ:        --     Print Screen ����
this.PrintScreen = 44
-- ժҪ:        --     INS ����
this.Insert = 45
-- ժҪ:        --     DEL ����
this.Delete = 46
-- ժҪ:        --     HELP ����
this.Help = 47
-- ժҪ:        --     0 ����
this.D0 = 48
-- ժҪ:        --     1 ����
this.D1 = 49
-- ժҪ:        --     2 ����
this.D2 = 50
-- ժҪ:        --     3 ����
this.D3 = 51
-- ժҪ:        --     4 ����
this.D4 = 52
-- ժҪ:        --     5 ����
this.D5 = 53
-- ժҪ:        --     6 ����
this.D6 = 54
-- ժҪ:        --     7 ����
this.D7 = 55
-- ժҪ:        --     8 ����
this.D8 = 56
-- ժҪ:        --     9 ����
this.D9 = 57
-- ժҪ:        --     A ����
this.A = 65
-- ժҪ:        --     B ����
this.B = 66
-- ժҪ:        --     C ����
this.C = 67
-- ժҪ:        --     D ����
this.D = 68
-- ժҪ:        --     E ����
this.E = 69
-- ժҪ:        --     F ����
this.F = 70
-- ժҪ:        --     G ����
this.G = 71
-- ժҪ:        --     H ����
this.H = 72
-- ժҪ:        --     I ����
this.I = 73
-- ժҪ:        --     J ����
this.J = 74
-- ժҪ:        --     K ����
this.K = 75
-- ժҪ:        --     L ����
this.L = 76
-- ժҪ:        --     M ����
this.M = 77
-- ժҪ:        --     N ����
this.N = 78
-- ժҪ:        --     O ����
this.O = 79
-- ժҪ:        --     P ����
this.P = 80
-- ժҪ:        --     Q ����
this.Q = 81
-- ժҪ:        --     R ����
this.R = 82
-- ժҪ:        --     S ����
this.S = 83
-- ժҪ:        --     T ����
this.T = 84
-- ժҪ:        --     U ����
this.U = 85
-- ժҪ:        --     V ����
this.V = 86
-- ժҪ:        --     W ����
this.W = 87
-- ժҪ:        --     X ����
this.X = 88
-- ժҪ:        --     Y ����
this.Y = 89
-- ժҪ:        --     Z ����
this.Z = 90
-- ժҪ:        --     �� Windows �ձ����Microsoft Natural Keyboard�����幤��ѧ���̣���
this.LWin = 91
-- ժҪ:        --     �� Windows �ձ����Microsoft Natural Keyboard�����幤��ѧ���̣���
this.RWin = 92
-- ժҪ:        --     Ӧ�ó������Microsoft Natural Keyboard�����幤��ѧ���̣���
this.Apps = 93
-- ժҪ:        --     �����˯�߼���
this.Sleep = 95
-- ժҪ:        --     ���ּ����ϵ� 0 ����
this.NumPad0 = 96
-- ժҪ:        --     ���ּ����ϵ� 1 ����
this.NumPad1 = 97
-- ժҪ:        --     ���ּ����ϵ� 2 ����
this.NumPad2 = 98
-- ժҪ:        --     ���ּ����ϵ� 3 ����
this.NumPad3 = 99
-- ժҪ:        --     ���ּ����ϵ� 4 ����
this.NumPad4 = 100
-- ժҪ:        --     ���ּ����ϵ� 5 ����
this.NumPad5 = 101
-- ժҪ:        --     ���ּ����ϵ� 6 ����
this.NumPad6 = 102
-- ժҪ:        --     ���ּ����ϵ� 7 ����
this.NumPad7 = 103
-- ժҪ:        --     ���ּ����ϵ� 8 ����
this.NumPad8 = 104
-- ժҪ:        --     ���ּ����ϵ� 9 ����
this.NumPad9 = 105
-- ժҪ:        --     �˺ż���
this.Multiply = 106
-- ժҪ:        --     �Ӻż���
this.Add = 107
-- ժҪ:        --     �ָ�������
this.Separator = 108
-- ժҪ:        --     ���ż���
this.Subtract = 109
-- ժҪ:        --     ������
this.Decimal = 110
-- ժҪ:        --     ���ż���
this.Divide = 111
-- ժҪ:        --     F1 ����
this.F1 = 112
-- ժҪ:        --     F2 ����
this.F2 = 113
-- ժҪ:        --     F3 ����
this.F3 = 114
-- ժҪ:        --     F4 ����
this.F4 = 115
-- ժҪ:        --     F5 ����
this.F5 = 116
-- ժҪ:        --     F6 ����
this.F6 = 117
-- ժҪ:        --     F7 ����
this.F7 = 118
-- ժҪ:        --     F8 ����
this.F8 = 119
-- ժҪ:        --     F9 ����
this.F9 = 120
-- ժҪ:        --     F10 ����
this.F10 = 121
-- ժҪ:        --     F11 ����
this.F11 = 122
-- ժҪ:        --     F12 ����
this.F12 = 123
-- ժҪ:        --     F13 ����
this.F13 = 124
-- ժҪ:        --     F14 ����
this.F14 = 125
-- ժҪ:        --     F15 ����
this.F15 = 126
-- ժҪ:        --     F16 ����
this.F16 = 127
-- ժҪ:        --     F17 ����
this.F17 = 128
-- ժҪ:        --     F18 ����
this.F18 = 129
-- ժҪ:        --     F19 ����
this.F19 = 130
-- ժҪ:        --     F20 ����
this.F20 = 131
-- ժҪ:        --     F21 ����
this.F21 = 132
-- ժҪ:        --     F22 ����
this.F22 = 133
-- ժҪ:        --     F23 ����
this.F23 = 134
-- ժҪ:        --     F24 ����
this.F24 = 135
-- ժҪ:
--     NUM LOCK ����
this.NumLock = 144
-- ժҪ:        --     Scroll Lock ����
this.Scroll = 145
-- ժҪ:        --     �� Shift ����
this.LShiftKey = 160
-- ժҪ:        --     �� Shift ����
this.RShiftKey = 161
-- ժҪ:        --     �� Ctrl ����
this.LControlKey = 162
-- ժҪ:        --     �� Ctrl ����
this.RControlKey = 163
-- ժҪ:        --     �� Alt ����
this.LMenu = 164
-- ժҪ:        --     �� Alt ����
this.RMenu = 165
-- ժҪ:        --     ��������˼���Windows 2000 ����߰汾����
this.BrowserBack = 166
-- ժҪ:        --     �����ǰ������Windows 2000 ����߰汾����
this.BrowserForward = 167
-- ժҪ:        --     �����ˢ�¼���Windows 2000 ����߰汾����
this.BrowserRefresh = 168
-- ժҪ:        --     �����ֹͣ����Windows 2000 ����߰汾����
this.BrowserStop = 169
-- ժҪ:        --     �������������Windows 2000 ����߰汾����
this.BrowserSearch = 170
-- ժҪ:        --     ������ղؼм���Windows 2000 ����߰汾����
this.BrowserFavorites = 171
-- ժҪ:        --     �������ҳ����Windows 2000 ����߰汾����
this.BrowserHome = 172
-- ժҪ:        --     ��������Windows 2000 ����߰汾����
this.VolumeMute = 173
-- ժҪ:        --     ��С��������Windows 2000 ����߰汾����
this.VolumeDown = 174
-- ժҪ:        --     ������������Windows 2000 ����߰汾����
this.VolumeUp = 175
-- ժҪ:        --     ý����һ��Ŀ����Windows 2000 ����߰汾����
this.MediaNextTrack = 176
-- ժҪ:        --     ý����һ��Ŀ����Windows 2000 ����߰汾����
this.MediaPreviousTrack = 177
-- ժҪ:        --     ý��ֹͣ����Windows 2000 ����߰汾����
this.MediaStop = 178
-- ժҪ:        --     ý�岥����ͣ����Windows 2000 ����߰汾����
this.MediaPlayPause = 179
-- ժҪ:        --     �����ʼ�����Windows 2000 ����߰汾����
this.LaunchMail = 180
-- ժҪ:        --     ѡ��ý�����Windows 2000 ����߰汾����
this.SelectMedia = 181
-- ժҪ:        --     ����Ӧ�ó���һ����Windows 2000 ����߰汾����
this.LaunchApplication1 = 182
-- ժҪ:        --     ����Ӧ�ó��������Windows 2000 ����߰汾����
this.LaunchApplication2 = 183
-- ժҪ:        --     ��ʽ��׼�����ϵ� OEM �ֺż���Windows 2000 ����߰汾����
this.OemSemicolon = 186
-- ժҪ:        --     OEM 1 ����
this.Oem1 = 186
-- ժҪ:        --     �κι���/���������ϵ� OEM �Ӻż���Windows 2000 ����߰汾����
this.Oemplus = 187
-- ժҪ:        --     �κι���/���������ϵ� OEM ���ż���Windows 2000 ����߰汾����
this.Oemcomma = 188
-- ժҪ:        --     �κι���/���������ϵ� OEM ���ż���Windows 2000 ����߰汾����
this.OemMinus = 189
-- ժҪ:        --     �κι���/���������ϵ� OEM ������Windows 2000 ����߰汾����
this.OemPeriod = 190
-- ժҪ:        --     ��ʽ��׼�����ϵ� OEM �ʺż���Windows 2000 ����߰汾����
this.OemQuestion = 191
-- ժҪ:        --     OEM 2 ����
this.Oem2 = 191
-- ժҪ:        --     ��ʽ��׼�����ϵ� OEM ���η�����Windows 2000 ����߰汾����
this.Oemtilde = 192
-- ժҪ:        --     OEM 3 ����
this.Oem3 = 192
-- ժҪ:        --     ��ʽ��׼�����ϵ� OEM �����ż���Windows 2000 ����߰汾����
this.OemOpenBrackets = 219
-- ժҪ:        --     OEM 4 ����
this.Oem4 = 219
-- ժҪ:        --     ��ʽ��׼�����ϵ� OEM �ܵ�����Windows 2000 ����߰汾����
this.OemPipe = 220
-- ժҪ:        --     OEM 5 ����
this.Oem5 = 220
-- ժҪ:        --     ��ʽ��׼�����ϵ� OEM �����ż���Windows 2000 ����߰汾����
this.OemCloseBrackets = 221
-- ժҪ:        --     OEM 6 ����
this.Oem6 = 221
-- ժҪ:        --     ��ʽ��׼�����ϵ� OEM ��/˫���ż���Windows 2000 ����߰汾����
this.OemQuotes = 222
-- ժҪ:        --     OEM 7 ����
this.Oem7 = 222
-- ժҪ:        --     OEM 8 ����
this.Oem8 = 223
-- ժҪ:        --     RT 102 ���ļ����ϵ� OEM �����Ż�б�ܼ���Windows 2000 ����߰汾����
this.OemBackslash = 226
-- ժҪ:        --     OEM 102 ����
this.Oem102 = 226
-- ժҪ:        --     Process Key ����
this.ProcessKey = 229
-- ժҪ:        --     ���ڽ� Unicode �ַ������������ݡ�Packet ��ֵ�����ڷǼ������뷨�� 32 λ�����ֵ�ĵ�λ�֡�
this.Packet = 231
-- ժҪ:        --     ATTN ����
this.Attn = 246
-- ժҪ:        --     Crsel ����
this.Crsel = 247
-- ժҪ:        --     Exsel ����
this.Exsel = 248
-- ժҪ:        --     ERASE EOF ����
this.EraseEof = 249
-- ժҪ:        --     PLAY ����
this.Play = 250
-- ժҪ:        --     ZOOM ����
this.Zoom = 251
-- ժҪ:        --     �����Ա�����ʹ�õĳ�����
this.NoName = 252
-- ժҪ:        --     PA1 ����
this.Pa1 = 253
-- ժҪ:        --     Clear ����
this.OemClear = 254
-- ժҪ:        --     �Ӽ�ֵ��ȡ�������λ���Ρ�
this.KeyCode = 65535
-- ժҪ:        --     Shift �޸ļ���
this.Shift = 65536
-- ժҪ:        --     Ctrl �޸ļ���
this.Control = 131072
-- ժҪ:        --     Alt �޸ļ���
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
