using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\RateUsDB.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Rating1_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
    {
        e.CallbackResult = "Update done value=" + e.Value + "Tag=" + e.Tag;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string howmuch = "[unknown]";
        switch (Rating1.CurrentRating)
        {
            case 1: howmuch = " 1 star"; break;
            case 2: howmuch = " 2 star"; break;
            case 3: howmuch = " 3 star"; break;
            case 4: howmuch = " 4 star"; break;
            case 5: howmuch = " 5 star"; break;
        }
         Label1.Text = "Thanks for your valuable <b>" + howmuch + "</b>";
         con.Open();
         SqlCommand cmd = new SqlCommand("insert into rate (rate) values('" + Rating1.CurrentRating + "')", con);
         cmd.ExecuteNonQuery();
         con.Close();
         ratings();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("rateus1.aspx");
    }
    protected void ratings()
    {
        con.Open();
        SqlCommand delr = new SqlCommand("Update ratetable set rating = Null", con);
        delr.ExecuteNonQuery();
        SqlCommand delc = new SqlCommand("Update ratetable set countraters = Null", con);
        delc.ExecuteNonQuery();

        var cmd1 = new SqlCommand("SELECT COUNT(rate) FROM rate where rate='" + 1 + "'", con);
        var count1 = cmd1.ExecuteScalar().ToString();
        var cmd2 = new SqlCommand("SELECT COUNT(rate) FROM rate where rate='" + 2 + "'", con);
        var count2 = cmd2.ExecuteScalar().ToString();
        var cmd3 = new SqlCommand("SELECT COUNT(rate) FROM rate where rate='" + 3 + "'", con);
        var count3 = cmd3.ExecuteScalar().ToString();
        var cmd4 = new SqlCommand("SELECT COUNT(rate) FROM rate where rate='" + 4 + "'", con);
        var count4 = cmd4.ExecuteScalar().ToString();
        var cmd5 = new SqlCommand("SELECT COUNT(rate) FROM rate where rate='" + 5 + "'", con);
        var count5 = cmd5.ExecuteScalar().ToString();

        SqlCommand countrate1c = new SqlCommand("insert into ratetable (countraters, rating) values( @abc, '1')", con);
        countrate1c.Parameters.AddWithValue("@abc", count1);
        countrate1c.ExecuteNonQuery();
        SqlCommand countrate2c = new SqlCommand("insert into ratetable (rating, countraters) values('2', @d)", con);
        countrate2c.Parameters.AddWithValue("@d", count2);
        countrate2c.ExecuteNonQuery();
        SqlCommand countrate3c = new SqlCommand("insert into ratetable (rating, countraters) values('3', @e)", con);
        countrate3c.Parameters.AddWithValue("@e", count3);
        countrate3c.ExecuteNonQuery();
        SqlCommand countrate4c = new SqlCommand("insert into ratetable (rating, countraters) values('4', @f)", con);
        countrate4c.Parameters.AddWithValue("@f", count4);
        countrate4c.ExecuteNonQuery();
        SqlCommand countrate5c = new SqlCommand("insert into ratetable (rating, countraters) values('5', @g)", con);
        countrate5c.Parameters.AddWithValue("@g", count5);
        countrate5c.ExecuteNonQuery();
        con.Close();
    }
}