using Microsoft.Win32;
using System;
using System.Windows.Forms;

namespace ApplicationRuntime
{
    static class Program
    {
        /// <summary>
        /// 应用程序的主入口点。
        /// </summary>
        [STAThread]
        static void Main(string[] args)
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            if (args.Length == 0)
            {
                mLuaq mLua = new mLuaq();
                mLua._Initialize();
                Application.Run();
            }
            else
            {
                string mf = "";
                for (int i = 0; i < args.Length; i++)
                {
                    mf = mf + " " + args[i];
                }
                mf = mf.Trim();
                if (mf == "-reg") { RegFile(); }
                mLuaq mLua = new mLuaq(mf);
                mLua._Initialize();
                Application.Run();
            }
        }
        static void RegFile()
        {
            try
            {
                RegistryKey reg = Registry.ClassesRoot;
                reg.CreateSubKey(".anf");
                reg.CreateSubKey("Luna.Application.anf\\DefaultIcon");
                reg.CreateSubKey("Luna.Application.anf\\Shell\\Open\\Command");
                RegistryKey key1 = reg.OpenSubKey(".anf",true);
                key1.SetValue("", "Luna.Application.anf");
                key1.Close();
                RegistryKey key2 = reg.OpenSubKey("Luna.Application.anf\\DefaultIcon", true);
                key2.SetValue("", Application.ExecutablePath + ",0");
                key2.Close();
                RegistryKey key3 = reg.OpenSubKey("Luna.Application.anf\\Shell\\Open\\Command", true);
                key3.SetValue("", "\"" + Application.ExecutablePath + "\" %1");
                key3.Close();
                RegistryKey key4 = reg.OpenSubKey("Luna.Application.anf", true);
                key4.SetValue("", "应用程序描述文件");
                key4.Close();
                reg.Close();
                MessageBox.Show("关联文件类型成功！", "Application", MessageBoxButtons.OK, MessageBoxIcon.Information);
                Environment.Exit(0);
            }
            catch(Exception e)
            {
                MessageBox.Show(e.Message + "\n需要管理员权限。", "Application", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                Environment.Exit(0);
            }
        }
    }
}
