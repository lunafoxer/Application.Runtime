using System;
using System.Drawing;
using System.Text;
using mLuna;
using System.Windows.Forms;
using System.IO;
using System.Runtime.InteropServices;
using Microsoft.Win32;
using System.Net;
using System.Collections.Generic;

namespace ApplicationRuntime
{
    public class _Function
    {
        public string GetWindowText(int hwnd)
        {
            StringBuilder Px = new StringBuilder(512);
            int i = Luna.GetWindowText(hwnd, Px, Px.Capacity);
            return Px.ToString();
        }
        public int GetForegroundWindow()
        {
            return Luna.GetForegroundWindow();
        }
        public int MessageBoxA(string caption, string title = null, int mbutton = 0, int icon = 0)
        {
            try
            {
                return (int)MessageBox.Show(caption, title, (MessageBoxButtons)mbutton, (MessageBoxIcon)icon);
            }
            catch
            {
                return (int)MessageBox.Show(caption, title);
            }
        }
        public void Exit()
        {
            Environment.Exit(0);
        }
        public int Shell(string filename, string command = null, string mode = "open", int showmode = 1)
        {
            return Luna.ShellExecute(0, mode, filename, command, null, showmode);
        }
        public bool dizNew(string filename, string password, int keybit)
        {
            return Luna.dizNew(filename, password, keybit);
        }
        public string GetRandomFile(string filepath)
        {
            //MessageBox.Show(Luna.FLE_GetRandomFile(filepath));
            return Marshal.PtrToStringAnsi(Luna.GetRandomFile(filepath));
        }
        public bool Progress(string progressname, int pid = -1)
        {
            return Luna.Progress(progressname, pid);
        }
        public string GetApplication()
        {
            return Application.ExecutablePath;
        }
        public string GetApplicationVersion()
        {
            return Application.ProductVersion;
        }
        public void ApplicationDoEvents()
        {
            Application.DoEvents();
        }
        public string GetScript()
        {
            return mLuaq.mFilename;
        }
        public int GetBreatheInterval()
        {

            return mLuaq.mTimer.Interval;
        }
        public void SetBreatheInterval(int i = 500)
        {
            if (i == 0)
            {
                if (mLuaq.mTimer.Enabled == true) mLuaq.mTimer.Enabled = false;
                mLuaq.mTimer.Interval = i;
            }
            else
            {
                if (mLuaq.mTimer.Enabled == false) mLuaq.mTimer.Enabled = true;
                mLuaq.mTimer.Interval = i;
            }
        }
        public string FindFileName(string filename)
        {
            return Marshal.PtrToStringAnsi(Luna.FindFileName(filename));
        }
        public string FindFileNameA(string filename)
        {
            return Marshal.PtrToStringAnsi(Luna.FindFileNameA(filename));
        }
        public string FindFilePath(string filename)
        {
            return Marshal.PtrToStringAnsi(Luna.FindFilePath(filename));
        }
        public string Randomize(int length = 1)
        {
            return Marshal.PtrToStringAnsi(Luna.Randomize(length));
        }
        public string GetDate(string type = null)
        {
            if (type == null)
            {
                return Marshal.PtrToStringAnsi(Luna.GetDate("DATE"));
            }
            else
            {
                return Marshal.PtrToStringAnsi(Luna.GetDate(type));
            }
        }
        public string GetTime(string type = null)
        {
            if (type == null)
            {
                return Marshal.PtrToStringAnsi(Luna.GetTime("TIME"));
            }
            else
            {
                return Marshal.PtrToStringAnsi(Luna.GetTime(type));
            }
        }
        public void InputBox_Show(out string InputBoxString, out bool flag, string info = "请输入：", string title = "输入框", string defaulttext = "", bool password = false, int postion = 1)
        {
            if (password == false)
            {
                flag = InputForm.Show(out InputBoxString, info, title, defaulttext);
            }
            else
            {
                flag = InputForm.Show(out InputBoxString, info, title, defaulttext, '*', postion);
            }
        }
        public bool Beep(int freq = 1000, int duration = 200)
        {
            return Luna.Beep(freq, duration);
        }
        public int Keys_GetValue(string keyname)
        {
            int m = (int)Enum.Parse(typeof(Keys), keyname);
            return m;
        }
        public string Keys_GetName(int kid)
        {
            return Enum.GetName(typeof(Keys), kid);
        }
        public bool FileExists(string filename)
        {
            return File.Exists(filename);
        }
        public object Include(string filename, string module = "Application.Lua")
        {
            try
            {
                StreamReader sr;
                string endfile, luadata;
                if (File.Exists(filename))
                {
                    endfile = filename;
                }
                else if (File.Exists(filename + ".lua"))
                {
                    endfile = (filename + ".lua");
                }
                else if (File.Exists(filename + ".anf"))
                {
                    endfile = (filename + ".anf");
                }
                else if (File.Exists(FindFilePath(mLuaq.mFilename) + "\\" + filename))
                {
                    endfile = (FindFilePath(mLuaq.mFilename) + "\\" + filename);
                }
                else if (File.Exists(FindFilePath(mLuaq.mFilename) + "\\" + filename + ".lua"))
                {
                    endfile = (FindFilePath(mLuaq.mFilename) + "\\" + filename + ".lua");
                }
                else if (File.Exists(FindFilePath(mLuaq.mFilename) + "\\" + filename + ".anf"))
                {
                    endfile = (FindFilePath(mLuaq.mFilename) + "\\" + filename + ".anf");
                }
                else if (File.Exists(filename + "\\init.lua"))
                {
                    endfile = (filename + "\\init.lua");
                }
                else if (File.Exists(filename + "\\lua.lua"))
                {
                    endfile = (filename + "\\lua.lua");
                }
                else if (File.Exists(filename + "\\init.anf"))
                {
                    endfile = (filename + "\\init.anf");
                }
                else if (File.Exists(filename + "\\lua.anf"))
                {
                    endfile = (filename + "\\lua.anf");
                }
                else if (File.Exists(filename + "\\Main.anf"))
                {
                    endfile = (filename + "\\Main.anf");
                }
                else if (File.Exists(filename.Replace('.', '\\')))
                {
                    endfile = (filename.Replace('.', '\\'));
                }
                else if (File.Exists(filename.Replace('.', '\\') + ".lua"))
                {
                    endfile = (filename.Replace('.', '\\') + ".lua");
                }
                else if (File.Exists(filename.Replace('.', '\\') + ".anf"))
                {
                    endfile = (filename.Replace('.', '\\') + ".anf");
                }
                else if (File.Exists(filename.Replace('.', '\\') + "\\lua.lua"))
                {
                    endfile = (filename.Replace('.', '\\') + "\\lua.lua");
                }
                else if (File.Exists(filename.Replace('.', '\\') + "\\lua.anf"))
                {
                    endfile = (filename.Replace('.', '\\') + "\\lua.anf");
                }
                else if (File.Exists(filename.Replace('.', '\\') + "\\init.lua"))
                {
                    endfile = filename.Replace('.', '\\') + "\\init.lua";
                }
                else if (File.Exists(filename.Replace('.', '\\') + "\\init.anf"))
                {
                    endfile = filename.Replace('.', '\\') + "\\init.anf";
                }
                else if (File.Exists(filename.Replace('.', '\\') + "\\main.anf"))
                {
                    endfile = filename.Replace('.', '\\') + "\\main.anf";
                }
                else
                {
                    MessageBox.Show("无法加载模块 '" + filename + "'，文件在以下位置均无效：\n"
                        + "file not found:'" + filename + "'\n"
                        + "file not found:'" + filename + ".lua'\n"
                        + "file not found:'" + filename + ".anf'\n"
                        + "file not found:'" + filename + "\\init.lua'\n"
                        + "file not found:'" + filename + "\\init.anf'\n"
                        + "file not found:'" + filename + "\\lua.lua'\n"
                        + "file not found:'" + filename + "\\lua.anf'\n"
                        + "file not found:'" + filename + "\\main.anf'\n"
                        + "file not found:'" + filename.Replace('.', '\\') + "'\n"
                        + "file not found:'" + filename.Replace('.', '\\') + ".lua'\n"
                        + "file not found:'" + filename.Replace('.', '\\') + ".anf'\n"
                        + "file not found:'" + filename.Replace('.', '\\') + "\\lua.lua'\n"
                        + "file not found:'" + filename.Replace('.', '\\') + "\\lua.anf'\n"
                        + "file not found:'" + filename.Replace('.', '\\') + "\\init.lua'\n"
                        + "file not found:'" + filename.Replace('.', '\\') + "\\init.anf'\n"
                        + "file not found:'" + filename.Replace('.', '\\') + "\\main.anf'\n"
                        , "Application", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    return null;
                }
                int fid = Luna.dizOpen(endfile, "LUA_COMPILE_DIZFILE", 0);
                if (fid > 0)
                {
                    IntPtr ptr = Luna.dizGetField(fid, module);
                    if ((int)ptr == 0)
                    {
                        Luna.dizClose(fid);
                        return null;
                    }
                    int len = Marshal.ReadInt32(ptr - 4);
                    luadata = Marshal.PtrToStringAnsi(ptr, len);
                    Luna.dizClose(fid);
                }
                else
                {
                    sr = new StreamReader(endfile, Encoding.Default);
                    luadata = sr.ReadToEnd();
                    sr.Close();
                }
                if (luadata.Trim() == "")
                {
                    return null;
                }
                object[] w = mLuaq.mLua.DoString(luadata);
                if (w != null)
                {
                    if (w.Length > 1)
                    {
                        return w;
                    }
                    else
                    {
                        return w[0];
                    }
                }
                else
                {
                    return null;
                }
            }
            catch (Exception er)
            {
                MessageBox.Show(er.Message, "Application", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return null;
            }
        }
        public bool ExitWindows(int wid, bool flag = false)
        {
            //WID 可以为整数： 1: #关机;  2: #重启;  3: #注销; 4: #休眠  5: #冬眠。 注意在Windows95/98/ME下冬眠等同于休眠。
            //flag 参数指定是否不等待当前正在运行的所有软件正常结束而立即执行指定的操作。
            return Luna.SYS_ExitWindows(wid, flag);
        }
        public bool Registry_CreateSubKey(int root, string path)
        {
            RegistryKey reg;
            switch (root)
            {
                case 0:
                    reg = Registry.ClassesRoot;
                    break;
                case 1:
                    reg = Registry.CurrentUser;
                    break;
                case 2:
                    reg = Registry.LocalMachine;
                    break;
                case 3:
                    reg = Registry.Users;
                    break;
                case 4:
                    reg = Registry.CurrentConfig;
                    break;
                default:
                    reg = Registry.ClassesRoot;
                    break;
            }
            try
            {
                reg.CreateSubKey(path);
                reg.Close();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public bool Registry_DeleteSubKey(int root, string path)
        {
            RegistryKey reg;
            switch (root)
            {
                case 0:
                    reg = Registry.ClassesRoot;
                    break;
                case 1:
                    reg = Registry.CurrentUser;
                    break;
                case 2:
                    reg = Registry.LocalMachine;
                    break;
                case 3:
                    reg = Registry.Users;
                    break;
                case 4:
                    reg = Registry.CurrentConfig;
                    break;
                default:
                    reg = Registry.ClassesRoot;
                    break;
            }
            try
            {
                reg.DeleteSubKey(path, true);
                reg.Close();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public bool Registry_SetValue(int root, string path, string name, string value)
        {
            RegistryKey reg;
            switch (root)
            {
                case 0:
                    reg = Registry.ClassesRoot;
                    break;
                case 1:
                    reg = Registry.CurrentUser;
                    break;
                case 2:
                    reg = Registry.LocalMachine;
                    break;
                case 3:
                    reg = Registry.Users;
                    break;
                case 4:
                    reg = Registry.CurrentConfig;
                    break;
                default:
                    reg = Registry.ClassesRoot;
                    break;
            }
            try
            {
                RegistryKey key = reg.OpenSubKey(path, true);
                key.SetValue(name, value);
                reg.Close();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public void Registry_GetValue(out string value, out bool flag, int root, string path, string name)
        {
            RegistryKey reg;
            switch (root)
            {
                case 0:
                    reg = Registry.ClassesRoot;
                    break;
                case 1:
                    reg = Registry.CurrentUser;
                    break;
                case 2:
                    reg = Registry.LocalMachine;
                    break;
                case 3:
                    reg = Registry.Users;
                    break;
                case 4:
                    reg = Registry.CurrentConfig;
                    break;
                default:
                    reg = Registry.ClassesRoot;
                    break;
            }
            try
            {
                RegistryKey key = reg.OpenSubKey(path, true);
                value = key.GetValue(name).ToString();
                reg.Close();
                flag = true;
            }
            catch
            {
                value = "";
                flag = false;
            }
        }
        public bool Registry_DelValue(int root, string path, string name)
        {
            RegistryKey reg;
            switch (root)
            {
                case 0:
                    reg = Registry.ClassesRoot;
                    break;
                case 1:
                    reg = Registry.CurrentUser;
                    break;
                case 2:
                    reg = Registry.LocalMachine;
                    break;
                case 3:
                    reg = Registry.Users;
                    break;
                case 4:
                    reg = Registry.CurrentConfig;
                    break;
                default:
                    reg = Registry.ClassesRoot;
                    break;
            }
            try
            {
                RegistryKey key = reg.OpenSubKey(path, true);
                key.DeleteValue(name);
                reg.Close();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public Keys Menu_ShortcutKeys(string key = null)
        {
            if (key != null && key.Trim() != "")
            {
                string[] sKeys = key.Split(',');
                switch (sKeys.Length)
                {
                    case 2:
                        return (Keys)int.Parse(sKeys[0]) | (Keys)int.Parse(sKeys[1]);
                    case 3:
                        return (Keys)int.Parse(sKeys[0]) | (Keys)int.Parse(sKeys[1]) | (Keys)int.Parse(sKeys[2]);
                }
            }
            return Keys.None;
        }
        public static Bitmap ReadImageFile(string path)
        {
            try
            {
                FileStream fs = File.OpenRead(path); //OpenRead
                int filelength = 0;
                filelength = (int)fs.Length; //获得文件长度 
                Byte[] image = new Byte[filelength]; //建立一个字节数组 
                fs.Read(image, 0, filelength); //按字节流读取 
                Image result = Image.FromStream(fs);
                fs.Close();
                Bitmap bit = new Bitmap(result);
                return bit;
            }
            catch
            {
                return null;
            }
        }
        public void Split(out object[] Arry, out int len, string FullString, string Separator = ",")
        {
            if (FullString != null && FullString.Trim() != "")
            {
                Arry = FullString.Split(Separator[0]);
                len = Arry.Length;
                return;
            }
            Arry = null;
            len = 0;
            return;
        }
        public string HTTPDownloadFile(string url)
        {
            try
            {
                HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
                //也可以是post请求
                request.Method = WebRequestMethods.Http.Get;
                //发送http请求及得到请求响应
                HttpWebResponse response = (HttpWebResponse)request.GetResponse();
                //使用读取流读取响应结果
                StreamReader reader = new StreamReader(response.GetResponseStream(), Encoding.Default);
                string str = reader.ReadToEnd();
                reader.Close();
                return str;
            }
            catch
            {
                return null;
            }
        }
        public string GetTextMid(string bSource, string leftword, string rightword)
        {
            return Marshal.PtrToStringAnsi(Luna.GetTextMid(bSource, leftword, rightword));
        }
        public char tochar(object par)
        {
            return char.Parse(par.ToString());
        }
        public static IntPtr MallocIntptr(string strData)
        {
            //先将字符串转化成字节方式   
            Byte[] btLen = new byte[4];
            Byte[] btData = System.Text.Encoding.Default.GetBytes(strData);
            ConvertIntToByteArray(btData.Length, ref btLen);
            //申请非拖管空间   
            IntPtr m_ptr = Marshal.AllocHGlobal(btData.Length + btLen.Length + 1);
            //给非拖管空间清0 
            Byte[] btZero = new Byte[btData.Length + btLen.Length + 1]; //一定要加1,否则后面是乱码，原因未找到   
            Marshal.Copy(btZero, 0, m_ptr, btZero.Length);
            //将字节数组长度写入托管内存空间
            Marshal.Copy(btLen, 0, m_ptr, btLen.Length);
            for (int i = 0; i < btData.Length; i++)
            {
                //逐字写入托管内存空间
                Marshal.WriteByte(m_ptr, i + btLen.Length, btData[i]);
            }
            return m_ptr;
        }
        public static IntPtr MallocIntptr(int length)
        {
            //申请非拖管空间   
            IntPtr m_ptr = Marshal.AllocHGlobal(length);
            //给非拖管空间清0
            Byte[] btZero = new Byte[length + 1]; //一定要加1,否则后面是乱码，原因未找到   
            Marshal.Copy(btZero, 0, m_ptr, btZero.Length);
            //给指针指向的空间赋值   
            Marshal.Copy(btZero, 0, m_ptr, length);
            return m_ptr;
        }
        public static bool ConvertIntToByteArray(Int32 m, ref byte[] arry)
        {
            //将32位有符号整数转换为长度为4的字节数组
            if (arry == null) return false;
            if (arry.Length < 4) return false;
            arry[0] = (byte)(m & 0xFF);
            arry[1] = (byte)((m & 0xFF00) >> 8);
            arry[2] = (byte)((m & 0xFF0000) >> 16);
            arry[3] = (byte)((m >> 24) & 0xFF);
            return true;
        }
        public int dizOpen(string filename, string password)
        {
            return Luna.dizOpen(filename, password, 0);
        }
        public bool dizClose(int fid)
        {
            return Luna.dizClose(fid);
        }
        public string dizGetField(int fid, string fieldname)
        {
            IntPtr ptr = Luna.dizGetField(fid, fieldname);
            if ((int)ptr == 0)
                return "";
            int len = Marshal.ReadInt32(ptr - 4);
            return Marshal.PtrToStringAnsi(ptr, len);
        }
        public bool dizUpdateField(int fid, string fieldname, string fielddata)
        {
            IntPtr ptr = MallocIntptr(fielddata);
            ptr = ptr + 4;//将内存指针位置加 4 以兼容易语言内存操作模式
            return Luna.dizUpdateField(fid, fieldname, ptr);
        }
        public bool dizUpdateFieldFromFile(int fid, string fieldname, string filename)
        {
            return Luna.dizUpdateFieldFromFile(fid, fieldname, filename,0);
        }
        public bool dizAddField(int fid, string fieldname, string fielddata = "")
        {
            try
            {
                IntPtr ptr = MallocIntptr(fielddata);
                ptr = ptr + 4;//将内存指针位置加 4 以兼容易语言内存操作模式
                return Luna.dizAddField(fid, fieldname, ptr);
            }
            catch
            {
                return false;
            }
        }
        public bool dizAddFieldFromFile(int fid, string fieldname, string filename)
        {
            return Luna.dizAddFieldFromFile(fid, fieldname, filename, 0);
        }
        public bool dizRenameField(int fid, string fieldname, string newfieldname)
        {
            return Luna.dizRenameField(fid, fieldname, newfieldname);
        }
        public string dizGetFieldName(int fid, int index)
        {
            return Marshal.PtrToStringAnsi(Luna.dizGetFieldName(fid, index));
        }
        public int dizGetFieldID(int fid, string fieldname)
        {
            return Luna.dizGetFieldID(fid, fieldname); 
        }
        public int dizGetTotalFields(int fid)
        {
            return Luna.dizGetTotalFields(fid); 
        }
        public bool dizDelField(int fid, string fieldname)
        {
            return Luna.dizDelField(fid, fieldname);
        }
        public long dizGetFieldLength(int fid, int index)
        {
            return Luna.dizGetFieldLength(fid, index);
        }

    }
}
