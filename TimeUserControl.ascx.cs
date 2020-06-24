using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationCTI_Study
{
    public partial class TimeUserControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public int Hour
        {
            get
            {
                return int.Parse(HourTextBox.Text);
            }
        }

        public String Dt
        {
            get
            {
                return HourTextBox.Text + ":" + MinuteTextBox.Text;
            }
        }
        public int Minute
        {
            get
            {
                return int.Parse(MinuteTextBox.Text);
            }
        }

        public string YYMMDDdt(string yymmdd)
        {
            return yymmdd + Hour + Minute;
        }

        protected void MinuteTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}