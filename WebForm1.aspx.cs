using Antlr.Runtime;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace WebApplicationCTI_Study
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "架電一覧";
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = "リーズする";
            var ID = GridView1.SelectedValue;
            Response.Redirect("~/users/" + ID);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label1.Text = "アタック";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label1.Text = "発信中";
           
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Label1.Text = "架電一覧";
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Label1.Text = "架電一覧";
        }
        protected void Button7_Click(object sender, EventArgs e)
        {
            Label1.Text = "停止します";

        }

        protected void Button_Click4(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

       

        

        protected void Button9_Click(object sender, EventArgs e)
        {
            Label1.Text = "チェックボックス選択されて";
        }

       

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button8_Click(object sender, EventArgs e)
        {

        }

        protected void Button8_Click1(object sender, EventArgs e)
        {

        }

        protected void Button11_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var ID = GridView1.SelectedValue;
            Response.Redirect(string.Format("~/FormViewSample.aspx?Id={0}",ID));

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName== "call")
            {
                int rownumber = int.Parse(e.CommandArgument.ToString());
                GridView1.Rows[rownumber].Cells[3].BackColor = System.Drawing.Color.Red;
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}