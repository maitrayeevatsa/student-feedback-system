using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("Admin.aspx");
        }
        if (!IsPostBack)
        {
            BindRepeaterData();
        }

    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
    protected void BindRepeaterData()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from ResiTable order by postdate Desc", con);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        Repeater2.DataSource = ds;
        Repeater2.DataBind();
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("AdminViewFB.aspx");


    }
}