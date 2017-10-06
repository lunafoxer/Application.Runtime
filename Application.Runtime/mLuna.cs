using System;
using System.Text;
using System.Runtime.InteropServices;

namespace mLuna
{
    public class Luna
    {
        public Luna() { }
        [DllImport("Luna.dll", EntryPoint = "GetDate")]
        public static extern IntPtr GetDate(string type);
        [DllImport("Luna.dll", EntryPoint = "GetTime")]
        public static extern IntPtr GetTime(string type);
        [DllImport("user32.dll")]
        public static extern int GetWindowText(int hwnd, StringBuilder textbuffer, int buffer);

        [DllImport("user32.dll")]
        public static extern int GetForegroundWindow();

        [DllImport("shell32.dll")]
        public static extern int ShellExecute
            (int hwnd, string lpszOp, string lpszFile, string lpszParams,
            string lpszDir, int FsShowCmd);
        [DllImport("Luna.dll")]
        public static extern IntPtr GetRandomFile(string filepath);

        [DllImport("Luna.dll")]
        public static extern bool Progress(string progressname, int pid);
        [DllImport("Luna.dll")]
        public static extern IntPtr FindFileName(string filename);
        [DllImport("Luna.dll")]
        public static extern IntPtr FindFileNameA(string filename);
        [DllImport("Luna.dll")]
        public static extern IntPtr FindFilePath(string filename);
        [DllImport("Luna.dll")]
        public static extern IntPtr Randomize(int length);
        [DllImport("Luna.dll")]
        public static extern IntPtr GetTextMid(string source, string leftword, string rightword);
        [DllImport("kernel32.dll")]
        public static extern bool Beep(int freq, int duration);
        [DllImport("Luna.dll")]
        public static extern bool SYS_ExitWindows(int wid, bool flag);

        [DllImport("Luna.dll")]
        public static extern int dizOpen(string filename, string password, int proc);
        [DllImport("Luna.dll")]
        public static extern bool dizClose(int fid);
        [DllImport("Luna.dll")]
        public static extern IntPtr dizGetField(int FID, string fieldname);
        [DllImport("Luna.dll")]
        public static extern bool dizNew(string filename, string password, int keybit);
        [DllImport("Luna.dll")]
        public static extern bool dizUpdateField(int FID, string fieldname, IntPtr address);
        [DllImport("Luna.dll")]
        public static extern bool dizUpdateFieldFromFile(int FID, string fieldname, string filename, int proc);
        [DllImport("Luna.dll")]
        public static extern bool dizAddField(int FID, string fieldname, IntPtr address);
        [DllImport("Luna.dll")]
        public static extern bool dizAddFieldFromFile(int FID, string fieldname, string filename, int proc);
        [DllImport("Luna.dll")]
        public static extern bool dizRenameField(int FID, string fieldname, string newfieldname);
        [DllImport("Luna.dll")]
        public static extern IntPtr dizGetFieldName(int FID, int index);
        [DllImport("Luna.dll")]
        public static extern int dizGetFieldID(int FID, string fieldname);
        [DllImport("Luna.dll")]
        public static extern int dizGetTotalFields(int FID);
        [DllImport("Luna.dll")]
        public static extern bool dizDelField(int FID,string fieldname);
        [DllImport("Luna.dll")]
        public static extern long dizGetFieldLength(int FID, int index);
    }
}
