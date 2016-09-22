using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Subject_select : System.Web.UI.Page
{
    string branch,elist;
    SqlConnection con = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null && Session["branch"] == null)
            Response.Redirect("~/Account/Login.aspx");
        if (!IsPostBack)
        {
            elective.Items.Add("Not Selected");
            branch = (string)Session["branch"];
           

            string conn = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            con = new SqlConnection(conn);
            con.Open();

            string query = @"select distinct elist from dbo.Subject where sid like '" + branch + "%'";
            SqlCommand cmd = new SqlCommand(query, con);


            SqlDataAdapter adb = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adb.Fill(ds, "elective");

            foreach (DataRow row in ds.Tables["elective"].Rows)
            {
                elective.Items.Add(row["elist"].ToString());
            }

            con.Close();
        }
    }
    protected void elective_SelectedIndexChanged(object sender, EventArgs e)
    {
        lbl.Text = "";
        DropDownList list = (sender as DropDownList);
        elist = list.SelectedValue;
        if (elist == "Not Selected")
        { 
            
        }
        else
        {
           
            string conn = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            con = new SqlConnection(conn);
            con.Open();

            string query = @"select * from dbo.Subject where elist ='" + elist + "'";
            SqlCommand cmd = new SqlCommand(query, con);


            SqlDataAdapter adb = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adb.Fill(ds, "elective");

            all.DataSource=ds.Tables["elective"];
            this.DataBind();
            all.Visible = true;
            }

            con.Close();
        }
    protected void subm_Click(object sender, EventArgs e)
    {
        string[] pref = new string[4];
       
        bool flag=true;
        try
        {
            foreach (GridViewRow dgRow in all.Rows)
                pref[Convert.ToInt32((dgRow.Cells[3].FindControl("pref") as TextBox).Text) - 1] = dgRow.Cells[0].Text;
        }
        catch (IndexOutOfRangeException ex)
        {
            flag = false;
        }

        if (flag)
        {
            for (int i = 0; i < 4; i++)
                for (int j = 0; j < 4; j++)
                    if (pref[j] == pref[i])
                        flag = false;
        }
        if (flag)
        {
            elist = elective.SelectedItem.Text;
            string query = "insert into dbo.Preference values('" + Session["regno"] + "','" + elist + "','" + pref[0] + "','" + pref[1] + "','" + pref[2] + "','" + pref[3] + "')";

            string conn = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);

            int x = cmd.ExecuteNonQuery();
            con.Close();
            if (x > 0)
                lbl.Text = "Application receieved.";
        }
        else
            lbl.Text = "Error in entries.";
    }
}
