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
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int flag = 0;
        if (flag == 0)
        {
            con.Open();
            string s = "select id from AdminRegist where id = '" + aid.Text + "'";
            SqlCommand cmd = new SqlCommand(s, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                if (dr.Read())
                {
                    aid.Text = "";
                    Label6.Visible = true;
                    Label6.Text = "Already Exists"; flag = 1;
                }
            }
            else
            {
                flag = 0;
            }
            con.Close();
        }
        if (flag == 0)
        {
            con.Open();
            string s1 = "insert into AdminRegist values('" + aid.Text + "','" + uname.Text + "','" + department.SelectedValue + "','" + password.Text + "')";
            SqlCommand cmd1 = new SqlCommand(s1, con);
            cmd1.ExecuteNonQuery();

            con.Close(); Label7.Visible = true; Label7.Text = "Successfully Signed in";
        }
        
    }
}