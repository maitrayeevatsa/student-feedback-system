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
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\AdminDB.mdf;Integrated Security=True;User Instance=True");
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("Admin.aspx");
        }
        showuser();
    }
    public void showuser()
    {
        string checkuser = "select * from AdminRegist where id ='" + Session["user"] + "'";
        SqlCommand cmd = new SqlCommand(checkuser, con);
        sda.SelectCommand = cmd;
        sda.Fill(ds);
        Label1.Text = "Admin: " + ds.Tables[0].Rows[0]["username"].ToString();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("GoverDB.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("CurriculumDB.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminStuDB.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("infradb.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("RESidb.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Admin.aspx");
    }
}