using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\SRegi.mdf;Integrated Security=True;User Instance=True");
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

      
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        string checkuser = "select count(*) from sregist where studentid ='" + TextBox1.Text + "'";
        SqlCommand cmd = new SqlCommand(checkuser, con);
        int temp = Convert.ToInt32(cmd.ExecuteScalar());
        if (temp == 1)
        {
            sda.SelectCommand = cmd;
            sda.Fill(ds, "sregist");
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["new"] = TextBox1.Text;
                Response.Redirect("Feedback.aspx");
            }
            else
            {
                Response.Write("Password is not correct");
            }
        }
        else
        {
            TextBox1.Text = "";
            Label4.Visible = true;
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}