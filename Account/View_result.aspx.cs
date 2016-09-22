using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using System.Web.Configuration;

public partial class Account_View_result : System.Web.UI.Page
{
    SqlConnection con = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null && Session["branch"] == null && Session["cgpa"] == null && Session["regno"] == null)
            Response.Redirect("~/Account/Login.aspx");
        if (!IsPostBack)
        {
            string conn = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            //string sql = "select top(50) from dbo.Preference natural join dbo.Users order by cgpa,p1,p2,p3,p4";
            string sql = "SELECT * FROM dbo.Allotment";
            SqlCommand cmd = new SqlCommand(sql, con);

                SqlDataAdapter adb = new SqlDataAdapter(cmd);
               DataSet ds = new DataSet();
                adb.Fill(ds, "elective");

             result.DataSource = ds.Tables["elective"];
              DataBind();

            con.Close();




        }
    }
}