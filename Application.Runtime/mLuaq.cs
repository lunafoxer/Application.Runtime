using LuaInterface;
using mLuna;
using System;
using System.IO;
using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace ApplicationRuntime
{
    public class mLuaq
    {
        public static string mFilename = "";
        public _Info[] _Pi = new _Info[0];
        public static Lua mLua;
        public static Timer mTimer;
        public int iBreathe = 0;
        public mLuaq()
        {
            mFilename = "D:\\Application.lua";
        }
        public mLuaq(string mF)
        {
            mFilename = mF;
            if (mFilename == "")
            {
                mFilename = "D:\\Application.lua";
            }
        }
        public void _Initialize()
        {
            try
            {
                mLua = new Lua();
                _Function _F = new _Function();
                _Method();
                foreach (_Info i in _Pi)
                {
                    //注册回调函数
                    mLua.RegisterFunction(i.Register, _F, _F.GetType().GetMethod(i.Method));
                    //MessageBox.Show(_F.GetType().GetMethod(i.Method).ToString());
                }
                if (mFilename != "" && File.Exists(mFilename))
                {
                    int fid = Luna.dizOpen(mFilename, "LUA_COMPILE_LDBFILE", 0);
                    switch (fid)
                    {
                        case -1:
                            MessageBox.Show("加载脚本失败：操作失败！", "运行时错误", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                            Environment.Exit(0);
                            break;
                        case -101:
                            MessageBox.Show("加载脚本失败：文件不存在或拒绝访问！", "运行时错误", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                            Environment.Exit(0);
                            break;
                        case -104:
                            MessageBox.Show("加载脚本失败：无法确定的编译器编码！", "运行时错误", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                            Environment.Exit(0);
                            break;
                        default:
                            if (fid > 0)
                            {
                                IntPtr ptr = Luna.dizGetField(fid, "Application.Lua");
                                if ((int)ptr == 0)
                                    Environment.Exit(0);
                                int len = Marshal.ReadInt32(ptr - 4);
                                string luadata = Marshal.PtrToStringAnsi(ptr, len);
                                Luna.dizClose(fid);
                                mLua.DoString(luadata);
                            }
                            else
                            {
                                mLua.DoFile(mFilename);
                            }
                            mTimer = new Timer();
                            mTimer.Interval = 500;
                            mLua.GetFunction("OnFrameCreate").Call();
                            mTimer.Tick += new System.EventHandler(mTimer_Tick);
                            mTimer.Enabled = true;
                            break;
                    }
                }
                else
                {
                    MessageBox.Show("加载脚本失败：文件不存在！", "运行时错误", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    Environment.Exit(0);
                }
            }
            catch (Exception er)
            {
                MessageBox.Show(er.Message, "运行时错误", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                Environment.Exit(0);
            }
        }
        public void _Method()
        {
            _Info _M = new _Info();

            _M.Method = "GetWindowText";
            _M.Register = _M.Method;
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "GetForegroundWindow";
            _M.Register = _M.Method;
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "Menu_ShortcutKeys";
            _M.Register = _M.Method;
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "GetBreatheInterval";
            _M.Register = _M.Method;
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "SetBreatheInterval";
            _M.Register = _M.Method;
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "MessageBoxA";
            _M.Register = "MessageBox";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "Exit";
            _M.Register = _M.Method;
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "Shell";
            _M.Register = _M.Method;
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "GetRandomFile";
            _M.Register = "GetRandomFile";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "Progress";
            _M.Register = "Progress";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "GetApplication";
            _M.Register = "GetApplication";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "GetApplicationVersion";
            _M.Register = "GetApplicationVersion";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "ApplicationDoEvents";
            _M.Register = "DoEvents";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "FindFileName";
            _M.Register = "FindFileName";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "FindFileNameA";
            _M.Register = "FindFileNameA";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "FindFilePath";
            _M.Register = "FindFilePath";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "Randomize";
            _M.Register = "Randomize";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "GetDate";
            _M.Register = "GetDate";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "GetTime";
            _M.Register = "GetTime";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "GetScript";
            _M.Register = "GetScript";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "InputBox_Show";
            _M.Register = "InputBox";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "Beep";
            _M.Register = "Beep";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "Keys_GetValue";
            _M.Register = "Keys_GetValue";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "Keys_GetName";
            _M.Register = "Keys_GetName";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "FileExists";
            _M.Register = "FileExists";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "Include";
            _M.Register = "Include";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "ReadImageFile";
            _M.Register = "ReadImageFile";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "ExitWindows";
            _M.Register = "ExitWindows";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "Registry_CreateSubKey";
            _M.Register = "Registry_CreateSubKey";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "Registry_DeleteSubKey";
            _M.Register = "Registry_DeleteSubKey";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "Registry_SetValue";
            _M.Register = "Registry_SetValue";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "Registry_GetValue";
            _M.Register = "Registry_GetValue";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "Registry_DelValue";
            _M.Register = "Registry_DelValue";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "Split";
            _M.Register = "Split";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "HTTPDownloadFile";
            _M.Register = "HTTPDownloadFile";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "GetTextMid";
            _M.Register = "GetTextMid";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "tochar";
            _M.Register = "tochar";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "dostring";
            _M.Register = "dostring";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "dizNew";
            _M.Register = "dizNew";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "dizOpen";
            _M.Register = "dizOpen";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "dizClose";
            _M.Register = "dizClose";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "dizGetField";
            _M.Register = "dizGetField";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "dizUpdateField";
            _M.Register = "dizUpdateField";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "dizUpdateFieldFromFile";
            _M.Register = "dizUpdateFieldFromFile";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "dizAddField";
            _M.Register = "dizAddField";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "dizAddFieldFromFile";
            _M.Register = "dizAddFieldFromFile";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "dizRenameField";
            _M.Register = "dizRenameField";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "dizGetFieldName";
            _M.Register = "dizGetFieldName";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "dizGetFieldID";
            _M.Register = "dizGetFieldID";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "dizGetTotalFields";
            _M.Register = "dizGetTotalFields";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "dizDelField";
            _M.Register = "dizDelField";
            _Pi = _AddFunction(_Pi, _M);

            _M.Method = "dizGetFieldLength";
            _M.Register = "dizGetFieldLength";
            _Pi = _AddFunction(_Pi, _M);
        }
        public _Info[] _AddFunction(_Info[] ary, _Info avy)
        {
            for (int p = 0; p < ary.Length; p++)
            {
                if (ary[p].Method == avy.Method && ary[p].Register == avy.Register) { return ary; }
            }
            _Info[] _CE = new _Info[ary.Length + 1];
            for (int i = 0; i < _CE.Length; i++)
            {
                _CE[i] = new _Info();
            }
            ary.CopyTo(_CE, 0);
            _CE[ary.Length].Method = avy.Method;
            _CE[ary.Length].Register = avy.Register;
            return _CE;
        }
        public void mTimer_Tick(object sender, EventArgs e)
        {
            try
            {
                iBreathe++;
                mLua.GetFunction("OnFrameBreathe").Call(iBreathe);
            }
            catch
            {

            }
        }
    }
    public class _Info
    {
        public string Method;//实际回调函数名称
        public string Register;//Lua回调函数名称
    }
}
