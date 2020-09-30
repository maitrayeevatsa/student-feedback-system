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
    SqlConnection con1 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\SRegi.mdf;Integrated Security=True;User Instance=True");
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["new"] == null)
        {
            Response.Redirect("Feedback1.aspx");
        }
        else
        showuser();
        addrows();
    }
    public void showuser()
    {
        string checkuser = "select * from sregist where studentid ='" + Session["new"] + "'";
        SqlCommand cmd = new SqlCommand(checkuser, con1);
        sda.SelectCommand = cmd;
        sda.Fill(ds);
        Label27.Text = "Welcome "+ ds.Tables[0].Rows[0]["studentname"].ToString();
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string checkuser = "select * from sregist where studentid ='" + Session["new"] + "'";
        SqlCommand cmd = new SqlCommand(checkuser, con1);
        sda.SelectCommand = cmd;
        sda.Fill(ds);
        string v = ds.Tables[0].Rows[0]["studentid"].ToString();
        con.Open();
        SqlCommand cmdc = new SqlCommand("insert into CurrTable (currisuggestion, postdate) values(@abc, @date)", con);
        cmdc.Parameters.AddWithValue("@abc", cbox.Text);
        cmdc.Parameters.AddWithValue("@date", DateTime.Now.Date);
        cmdc.ExecuteNonQuery();
            SqlCommand cmd1 = new SqlCommand("insert into CurrResult (userid, Q1,Q2,Q3,Q4,Q5,Q6) values(@abc, @Q1,@Q2,@Q3,@Q4,@Q5,@Q6)", con);
            cmd1.Parameters.AddWithValue("@abc", v);
            cmd1.Parameters.AddWithValue("@Q1", RadioButtonList1.SelectedValue);
            cmd1.Parameters.AddWithValue("@Q2", RadioButtonList2.SelectedValue);
            cmd1.Parameters.AddWithValue("@Q3", RadioButtonList3.SelectedValue);
            cmd1.Parameters.AddWithValue("@Q4", RadioButtonList4.SelectedValue);
            cmd1.Parameters.AddWithValue("@Q5", RadioButtonList5.SelectedValue);
            cmd1.Parameters.AddWithValue("@Q6", RadioButtonList6.SelectedValue);
            cmd1.ExecuteNonQuery();
        SqlCommand cmdg = new SqlCommand("insert into ManageTable (managesuggestion, postdate) values(@abc, @date)", con);
        cmdg.Parameters.AddWithValue("@abc", gbox.Text);
        cmdg.Parameters.AddWithValue("@date", DateTime.Now.Date);
        cmdg.ExecuteNonQuery();
            SqlCommand cmd2 = new SqlCommand("insert into ManageResult (userid, Q1,Q2,Q3,Q4,Q5,Q6) values(@abc, @Q1,@Q2,@Q3,@Q4,@Q5,@Q6)", con);
            cmd2.Parameters.AddWithValue("@abc", v);
            cmd2.Parameters.AddWithValue("@Q1", RadioButtonList7.SelectedValue);
            cmd2.Parameters.AddWithValue("@Q2", RadioButtonList8.SelectedValue);
            cmd2.Parameters.AddWithValue("@Q3", RadioButtonList9.SelectedValue);
            cmd2.Parameters.AddWithValue("@Q4", RadioButtonList10.SelectedValue);
            cmd2.Parameters.AddWithValue("@Q5", RadioButtonList11.SelectedValue);
            cmd2.Parameters.AddWithValue("@Q6", RadioButtonList12.SelectedValue);
            cmd2.ExecuteNonQuery();
        SqlCommand cmdi = new SqlCommand("insert into InfraTable (infrasuggestion, postdate) values(@abc, @date)", con);
        cmdi.Parameters.AddWithValue("@abc", ibox.Text);
        cmdi.Parameters.AddWithValue("@date", DateTime.Now.Date);
        cmdi.ExecuteNonQuery();
            SqlCommand cmd3 = new SqlCommand("insert into infraresult (userid, Qa1,Qa2,Qb1,Qb2,Qc1,Qc2,Qd1,Qd2) values(@abc, @Qa1,@Qa2,@Qb1,@Qb2,@Qc1,@Qc2,@Qd1,@Qd2)", con);
            cmd3.Parameters.AddWithValue("@abc", v);
            cmd3.Parameters.AddWithValue("@Qa1", RadioButtonList13.SelectedValue);
            cmd3.Parameters.AddWithValue("@Qa2", RadioButtonList14.SelectedValue);
            cmd3.Parameters.AddWithValue("@Qb1", RadioButtonList15.SelectedValue);
            cmd3.Parameters.AddWithValue("@Qb2", RadioButtonList16.SelectedValue);
            cmd3.Parameters.AddWithValue("@Qc1", RadioButtonList17.SelectedValue);
            cmd3.Parameters.AddWithValue("@Qc2", RadioButtonList18.SelectedValue);
            cmd3.Parameters.AddWithValue("@Qd1", RadioButtonList19.SelectedValue);
            cmd3.Parameters.AddWithValue("@Qd2", RadioButtonList20.SelectedValue);
            cmd3.ExecuteNonQuery();
        SqlCommand cmdr = new SqlCommand("insert into ResiTable (resisuggestion, postdate) values(@abc, @date)", con);
        cmdr.Parameters.AddWithValue("@abc", rbox.Text);
        cmdr.Parameters.AddWithValue("@date", DateTime.Now.Date);
        cmdr.ExecuteNonQuery();
        SqlCommand cmd4 = new SqlCommand("insert into ResiResult (userid, Q1,Q2,Q3,Q4,Q5,Q6) values(@abc, @Q1,@Q2,@Q3,@Q4,@Q5,@Q6)", con);
            cmd4.Parameters.AddWithValue("@abc", v);
            cmd4.Parameters.AddWithValue("@Q1", RadioButtonList21.SelectedValue);
            cmd4.Parameters.AddWithValue("@Q2", RadioButtonList22.SelectedValue);
            cmd4.Parameters.AddWithValue("@Q3", RadioButtonList23.SelectedValue);
            cmd4.Parameters.AddWithValue("@Q4", RadioButtonList24.SelectedValue);
            cmd4.Parameters.AddWithValue("@Q5", RadioButtonList25.SelectedValue);
            cmd4.Parameters.AddWithValue("@Q6", RadioButtonList26.SelectedValue);
            cmd4.ExecuteNonQuery();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Feedback1.aspx");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void addrows()
    {
      //string sum = "SELECT AVG(Q1) FROM CurrResult";
      //SqlDataAdapter da = new SqlDataAdapter(sum,con);
      //DataTable source = new DataTable();
      //da.Fill(source);
      //Label28.Text = source.Rows[0][0].ToString();
        con.Open();
        SqlCommand delc = new SqlCommand("Update CurrGraph set question = Null",con);
        delc.ExecuteNonQuery();
        SqlCommand delca = new SqlCommand("Update CurrGraph set average = Null", con);
        delca.ExecuteNonQuery();
        SqlCommand deli = new SqlCommand("Update infragraph set question = Null", con);
        deli.ExecuteNonQuery();
        SqlCommand delia = new SqlCommand("Update infragraph set average = Null", con);
        delia.ExecuteNonQuery();
        SqlCommand delg = new SqlCommand("Update managegraph set question = Null", con);
        delg.ExecuteNonQuery();
        SqlCommand delga = new SqlCommand("Update managegraph set average = Null", con);
        delga.ExecuteNonQuery();
        SqlCommand delr = new SqlCommand("Update resigraph set question = Null", con);
        delr.ExecuteNonQuery();
        SqlCommand delra = new SqlCommand("Update resigraph set average = Null", con);
        delra.ExecuteNonQuery();
        var cmd1c = new SqlCommand("SELECT AVG(Q1) FROM CurrResult", con);
        var avg1c = cmd1c.ExecuteScalar().ToString();
        var cmd2c = new SqlCommand("SELECT AVG(Q2) FROM CurrResult", con);
        var avg2c = cmd2c.ExecuteScalar().ToString();
        var cmd3c = new SqlCommand("SELECT AVG(Q3) FROM CurrResult", con);
        var avg3c = cmd3c.ExecuteScalar().ToString();
        var cmd4c = new SqlCommand("SELECT AVG(Q4) FROM CurrResult", con);
        var avg4c = cmd4c.ExecuteScalar().ToString();
        var cmd5c = new SqlCommand("SELECT AVG(Q5) FROM CurrResult", con);
        var avg5c = cmd5c.ExecuteScalar().ToString();
        var cmd6c = new SqlCommand("SELECT AVG(Q6) FROM CurrResult", con);
        var avg6c = cmd6c.ExecuteScalar().ToString();

        SqlCommand average1c = new SqlCommand("insert into CurrGraph (question, average) values('Q1', @abc)", con);
        average1c.Parameters.AddWithValue("@abc", avg1c);
        average1c.ExecuteNonQuery();
        SqlCommand average2c = new SqlCommand("insert into CurrGraph (question, average) values('Q2', @d)", con);
        average2c.Parameters.AddWithValue("@d", avg2c);
        average2c.ExecuteNonQuery();
        SqlCommand average3c = new SqlCommand("insert into CurrGraph (question, average) values('Q3', @d)", con);
        average3c.Parameters.AddWithValue("@d", avg3c);
        average3c.ExecuteNonQuery();
        SqlCommand average4c = new SqlCommand("insert into CurrGraph (question, average) values('Q4', @d)", con);
        average4c.Parameters.AddWithValue("@d", avg4c);
        average4c.ExecuteNonQuery();
        SqlCommand average5c = new SqlCommand("insert into CurrGraph (question, average) values('Q5', @d)", con);
        average5c.Parameters.AddWithValue("@d", avg5c);
        average5c.ExecuteNonQuery();
        SqlCommand average6c = new SqlCommand("insert into CurrGraph (question, average) values('Q6', @d)", con);
        average6c.Parameters.AddWithValue("@d", avg6c);
        average6c.ExecuteNonQuery();

        //Infra
        var cmd1f = new SqlCommand("SELECT AVG(Qa1) FROM infraresult", con);
        var avg1f= cmd1f.ExecuteScalar().ToString();
        var cmd2f = new SqlCommand("SELECT AVG(Qa2) FROM infraresult", con);
        var avg2f = cmd2f.ExecuteScalar().ToString();
        var cmd3f = new SqlCommand("SELECT AVG(Qb1) FROM infraresult", con);
        var avg3f = cmd3f.ExecuteScalar().ToString();
        var cmd4f = new SqlCommand("SELECT AVG(Qb2) FROM infraresult", con);
        var avg4f = cmd4f.ExecuteScalar().ToString();
        var cmd5f = new SqlCommand("SELECT AVG(Qc1) FROM infraresult", con);
        var avg5f = cmd5f.ExecuteScalar().ToString();
        var cmd6f = new SqlCommand("SELECT AVG(Qc2) FROM infraresult", con);
        var avg6f = cmd6f.ExecuteScalar().ToString();
        var cmd7f = new SqlCommand("SELECT AVG(Qd1) FROM infraresult", con);
        var avg7f = cmd7f.ExecuteScalar().ToString();
        var cmd8f = new SqlCommand("SELECT AVG(Qd2) FROM infraresult", con);
        var avg8f = cmd8f.ExecuteScalar().ToString();
        
        SqlCommand average11f = new SqlCommand("insert into infragraph (question, average) values('Qa1', @abc)", con);
        average11f.Parameters.AddWithValue("@abc", avg1f);
        average11f.ExecuteNonQuery();
        SqlCommand average12f = new SqlCommand("insert into infragraph (question, average) values('Qa2', @d)", con);
        average12f.Parameters.AddWithValue("@d", avg2f);
        average12f.ExecuteNonQuery();
        SqlCommand average21f = new SqlCommand("insert into infragraph (question, average) values('Qb1', @d)", con);
        average21f.Parameters.AddWithValue("@d", avg3f);
        average21f.ExecuteNonQuery();
        SqlCommand average22f = new SqlCommand("insert into infragraph (question, average) values('Qb2', @d)", con);
        average22f.Parameters.AddWithValue("@d", avg4f);
        average22f.ExecuteNonQuery();
        SqlCommand average31f = new SqlCommand("insert into infragraph (question, average) values('Qc1', @d)", con);
        average31f.Parameters.AddWithValue("@d", avg5f);
        average31f.ExecuteNonQuery();
        SqlCommand average32f = new SqlCommand("insert into infragraph (question, average) values('Qc2', @d)", con);
        average32f.Parameters.AddWithValue("@d", avg6f);
        average32f.ExecuteNonQuery();
        SqlCommand average41f = new SqlCommand("insert into infragraph (question, average) values('Qd1', @d)", con);
        average41f.Parameters.AddWithValue("@d", avg7f);
        average41f.ExecuteNonQuery();
        SqlCommand average42f = new SqlCommand("insert into infragraph (question, average) values('Qd2', @d)", con);
        average42f.Parameters.AddWithValue("@d", avg8f);
        average42f.ExecuteNonQuery();

        //Governance
        var cmd1m = new SqlCommand("SELECT AVG(Q1) FROM ManageResult", con);
        var avg1m = cmd1m.ExecuteScalar().ToString();
        var cmd2m = new SqlCommand("SELECT AVG(Q2) FROM ManageResult", con);
        var avg2m = cmd2m.ExecuteScalar().ToString();
        var cmd3m = new SqlCommand("SELECT AVG(Q3) FROM ManageResult", con);
        var avg3m = cmd3m.ExecuteScalar().ToString();
        var cmd4m = new SqlCommand("SELECT AVG(Q4) FROM ManageResult", con);
        var avg4m = cmd4m.ExecuteScalar().ToString();
        var cmd5m = new SqlCommand("SELECT AVG(Q5) FROM ManageResult", con);
        var avg5m = cmd5m.ExecuteScalar().ToString();
        var cmd6m = new SqlCommand("SELECT AVG(Q6) FROM ManageResult", con);
        var avg6m = cmd6m.ExecuteScalar().ToString();

        SqlCommand average1m = new SqlCommand("insert into managegraph (question, average) values('Q1', @abc)", con);
        average1m.Parameters.AddWithValue("@abc", avg1m);
        average1m.ExecuteNonQuery();
        SqlCommand average2m = new SqlCommand("insert into managegraph (question, average) values('Q2', @d)", con);
        average2m.Parameters.AddWithValue("@d", avg2m);
        average2m.ExecuteNonQuery();
        SqlCommand average3m = new SqlCommand("insert into managegraph (question, average) values('Q3', @d)", con);
        average3m.Parameters.AddWithValue("@d", avg3m);
        average3m.ExecuteNonQuery();
        SqlCommand average4m = new SqlCommand("insert into managegraph (question, average) values('Q4', @d)", con);
        average4m.Parameters.AddWithValue("@d", avg4m);
        average4m.ExecuteNonQuery();
        SqlCommand average5m = new SqlCommand("insert into managegraph (question, average) values('Q5', @d)", con);
        average5m.Parameters.AddWithValue("@d", avg5m);
        average5m.ExecuteNonQuery();
        SqlCommand average6m = new SqlCommand("insert into managegraph (question, average) values('Q6', @d)", con);
        average6m.Parameters.AddWithValue("@d", avg6m);
        average6m.ExecuteNonQuery();
        
        //Residence 
        var cmd1r = new SqlCommand("SELECT AVG(Q1) FROM ResiResult", con);
        var avg1r = cmd1r.ExecuteScalar().ToString();
        var cmd2r = new SqlCommand("SELECT AVG(Q2) FROM ResiResult", con);
        var avg2r = cmd2r.ExecuteScalar().ToString();
        var cmd3r = new SqlCommand("SELECT AVG(Q3) FROM ResiResult", con);
        var avg3r = cmd3r.ExecuteScalar().ToString();
        var cmd4r = new SqlCommand("SELECT AVG(Q4) FROM ResiResult", con);
        var avg4r = cmd4r.ExecuteScalar().ToString();
        var cmd5r = new SqlCommand("SELECT AVG(Q5) FROM ResiResult", con);
        var avg5r = cmd5r.ExecuteScalar().ToString();
        var cmd6r = new SqlCommand("SELECT AVG(Q6) FROM ResiResult", con);
        var avg6r = cmd6r.ExecuteScalar().ToString();

        SqlCommand average1r = new SqlCommand("insert into resigraph (question, average) values('Q1', @abc)", con);
        average1r.Parameters.AddWithValue("@abc", avg1r);
        average1r.ExecuteNonQuery();
        SqlCommand average2r = new SqlCommand("insert into resigraph (question, average) values('Q2', @d)", con);
        average2r.Parameters.AddWithValue("@d", avg2r);
        average2r.ExecuteNonQuery();
        SqlCommand average3r = new SqlCommand("insert into resigraph (question, average) values('Q3', @d)", con);
        average3r.Parameters.AddWithValue("@d", avg3r);
        average3r.ExecuteNonQuery();
        SqlCommand average4r = new SqlCommand("insert into resigraph (question, average) values('Q4', @d)", con);
        average4r.Parameters.AddWithValue("@d", avg4r);
        average4r.ExecuteNonQuery();
        SqlCommand average5r = new SqlCommand("insert into resigraph (question, average) values('Q5', @d)", con);
        average5r.Parameters.AddWithValue("@d", avg5r);
        average5r.ExecuteNonQuery();
        SqlCommand average6r = new SqlCommand("insert into resigraph (question, average) values('Q6', @d)", con);
        average6r.Parameters.AddWithValue("@d", avg6r);
        average6r.ExecuteNonQuery();
        con.Close();
    }
}