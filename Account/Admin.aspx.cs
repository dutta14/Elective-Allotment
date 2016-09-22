using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web.Configuration;
using System.Web.UI.WebControls;

public partial class Account_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string conn = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        //string sql = "select top(50) from dbo.Preference natural join dbo.Users order by cgpa,p1,p2,p3,p4";
        string sql = "DELETE from dbo.Allotment";
        SqlCommand cmd = new SqlCommand(sql, con);

        cmd.ExecuteNonQuery();
        
       sql = "INSERT INTO dbo.Allotment SELECT p1,regno,elist FROM dbo.Preference";
         cmd = new SqlCommand(sql, con);
         cmd.ExecuteNonQuery();
    //    SqlDataAdapter adb = new SqlDataAdapter(cmd);
     //   DataSet ds = new DataSet();
    //    adb.Fill(ds, "elective");

       // result.DataSource = ds.Tables["elective"];
      //  this.DataBind();

        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("View_result.aspx");
    }
    
}