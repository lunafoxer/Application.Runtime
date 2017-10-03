using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ApplicationRuntime
{
    public partial class InputForm : Form
    {
        bool flag = false;
        public InputForm()
        {
            InitializeComponent();
        }
        public static bool Show(out string par,string info)
        {
            InputForm InputBox = new InputForm();
            InputBox.Text = "Application";
            InputBox.lblInfo.Text = info;
            InputBox.txtBoxInput.Text = "";
            InputBox.ShowDialog();
            if (InputBox.flag == true)
            {
                par = InputBox.txtBoxInput.Text;
            }
            else
            {
                par = "";
            }
            return InputBox.flag;
        }
        public static bool Show(out string par, string info, string title)
        {
            InputForm InputBox = new InputForm();
            InputBox.Text = title;
            InputBox.lblInfo.Text = info;
            InputBox.txtBoxInput.Text = "";
            InputBox.ShowDialog();
            if (InputBox.flag == true)
            {
                par = InputBox.txtBoxInput.Text;
            }
            else
            {
                par = "";
            }
            return InputBox.flag;
        }
        public static bool Show(out string par,string info, string title, string defaulttext)
        {
            InputForm InputBox = new InputForm();
            InputBox.Text = title;
            InputBox.lblInfo.Text = info;
            InputBox.txtBoxInput.Text = defaulttext;
            InputBox.ShowDialog();
            if (InputBox.flag == true)
            {
                par = InputBox.txtBoxInput.Text;
            }
            else
            {
                par = "";
            }
            return InputBox.flag;
        }
        public static bool Show(out string par,string info, string title, string defaulttext,char passwordchar)
        {
            InputForm InputBox = new InputForm();
            InputBox.Text = title;
            InputBox.lblInfo.Text = info;
            InputBox.txtBoxInput.Text = defaulttext;
            InputBox.txtBoxInput.PasswordChar = passwordchar;
            InputBox.ShowDialog();
            if (InputBox.flag == true)
            {
                par = InputBox.txtBoxInput.Text;
            }
            else
            {
                par = "";
            }
            return InputBox.flag;
        }
        public static bool Show(out string par, string info, string title, string defaulttext, char passwordchar, int postion)
        {
            InputForm InputBox = new InputForm();
            InputBox.Text = title;
            InputBox.lblInfo.Text = info;
            InputBox.txtBoxInput.Text = defaulttext;
            InputBox.txtBoxInput.PasswordChar = passwordchar;
            switch (postion)
            {
                case 0:
                    InputBox.StartPosition = FormStartPosition.Manual;
                    break;
                case 1:
                    InputBox.StartPosition = FormStartPosition.CenterScreen;
                    break;
                case 2:
                    InputBox.StartPosition = FormStartPosition.WindowsDefaultLocation;
                    break;
                case 3:
                    InputBox.StartPosition = FormStartPosition.WindowsDefaultBounds;
                    break;
                case 4:
                    InputBox.StartPosition = FormStartPosition.CenterParent;
                    break;
                default:
                    InputBox.StartPosition = FormStartPosition.CenterScreen;
                    break;
            }
            InputBox.ShowDialog();
            if (InputBox.flag == true)
            {
                par = InputBox.txtBoxInput.Text;
            }
            else
            {
                par = "";
            }
            return InputBox.flag;
        }
        private void btnOK_Click(object sender, EventArgs e)
        {
            flag = true;
            this.Close();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            flag = false;
            this.Close();
        }

        private void InputForm_Load(object sender, EventArgs e)
        {
            this.txtBoxInput.Focus();
        }
    }
}
