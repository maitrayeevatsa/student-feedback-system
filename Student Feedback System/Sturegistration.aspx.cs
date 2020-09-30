using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\SRegi.mdf;Integrated Security=True;User Instance=True");
         
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.Items.Add("__select__");
            DropDownList1.Items.Add("AIM & ACT");
            DropDownList1.Items.Add("Automation Department");
            DropDownList1.Items.Add("Department of Physics");
            DropDownList1.Items.Add("Department of Geography");
            DropDownList1.Items.Add("Centre of Mathematical Studies");
            DropDownList1.Items.Add("School of Commerce & Management");
            DropDownList1.Items.Add("BioScience Department");
            DropDownList1.Items.Add(" Vidhi Mandir");
        }
        //if (IsPostBack)
        //{
        //    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["StuRegiConnectionString"].ConnectionString);
        //    conn.Open();
        //    string checkuser = "select count(*) from sregiTable1 where Student.ID='" + IDid.Text + "'";
        //    SqlCommand con = new SqlCommand(checkuser, conn);
        //    int temp = Convert.ToInt32(con.ExecuteScalar());
        //    if (temp == 1)
        //    {
        //        Response.Write("User ID already exists");
        //    }
        //    conn.Close();
        //}
            
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
        {
            DropDownList2.Items.Clear();
        }
        else if (DropDownList1.SelectedIndex == 1)
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("M.Tech(CS)");
            DropDownList2.Items.Add("M.Tech(IT)");
            DropDownList2.Items.Add("B.Tech(CS)");
            DropDownList2.Items.Add("B.Tech(IT)");
        }
        else if (DropDownList1.SelectedIndex == 2)
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("B.Tech(MCTR)");
            DropDownList2.Items.Add("B.Tech(EI)");
            DropDownList2.Items.Add("B.Tech(EE)");
        }
        else if (DropDownList1.SelectedIndex == 3)
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("B.Sc(Physics)");
            DropDownList2.Items.Add("M.Sc(Physics)");
            DropDownList2.Items.Add("B.Tech(EC)");
        }
        else if (DropDownList1.SelectedIndex == 4)
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("M.Sc(Geography)");
            DropDownList2.Items.Add("B.Sc(Geography)");
            DropDownList2.Items.Add("M.Tech(Remote Sensing)");
        }
        else if (DropDownList1.SelectedIndex == 5)
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("M.Sc(Maths)");
            DropDownList2.Items.Add("B.Sc(Maths)");
        }
        else if (DropDownList1.SelectedIndex == 6)
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("B.B.A)");
            DropDownList2.Items.Add("B.Com.");
            DropDownList2.Items.Add("M.B.A.");
            DropDownList2.Items.Add("M.Com.");
        }
        else if (DropDownList1.SelectedIndex == 7)
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("B.Sc.(BioScience)");
            DropDownList2.Items.Add("B.Sc.(Biotech)");
            DropDownList2.Items.Add("B.Sc(Zoology)");
            DropDownList2.Items.Add("B.Tech(Biotech)");
        }
        else if (DropDownList1.SelectedIndex == 8)
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("L.L.M");
            DropDownList2.Items.Add("B.B.A(LLB)");
            DropDownList2.Items.Add("B.A(LLB");
        }
    }
    protected void Subbutton_Click(object sender, EventArgs e)
    {
        int flag=0;
        if(flag==0)
        {
        con.Open();
        string s= "select studentid from sregist where studentid = '"+ IDid.Text+"'";
        SqlCommand cmd= new SqlCommand(s,con);
        SqlDataReader dr = cmd.ExecuteReader();
        if(dr.HasRows)
        {
            if(dr.Read())
            {
                IDid.Text="";
                Label11.Visible=true;
                Label11.Text="Already Exists";flag=1;
            }
        }
        else
        {
            flag=0;
        }
        con.Close();
        }
        if(flag==0)
        {
            con.Open();
            string s1 = "insert into sregist values('"+ IDid.Text+"','"+ Studentid.Text+"','"+ DropDownList1.SelectedValue +"','"+ DropDownList2.SelectedValue +"','"+ Mobileid.Text+"','"+DOJid.Text+"','"+ Emailid.Text+"','"+ Passwordid.Text+"')";
            SqlCommand cmd1 = new SqlCommand(s1, con);
            cmd1.ExecuteNonQuery();
            con.Close(); Label12.Text = "success";
            Response.Redirect("Feedbackinfo.aspx");
        }
      
    }
   
    protected void resetbutton_Click(object sender, EventArgs e)
    {
        Studentid.Text = string.Empty;
        IDid.Text = string.Empty;
        Studentid.Text = string.Empty;
        Mobileid.Text = string.Empty;
        DOJid.Text = string.Empty;
        Emailid.Text = string.Empty;
        Passwordid.Text = string.Empty;
    }

    protected void emailValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {

    }
    protected void mobileValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Mobileid_TextChanged(object sender, EventArgs e)
    {

    }
}