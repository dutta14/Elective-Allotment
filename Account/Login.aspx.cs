using Microsoft.AspNet.Membership.OpenAuth;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Login : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["name"] = null;

        RegisterHyperLink.NavigateUrl = "Register";

        var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
        if (!String.IsNullOrEmpty(returnUrl))
        {
            RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
        }
    }

    protected void login(object sender, EventArgs e)
    {
        string conn = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();

        string query = "select * from dbo.Users where regno = @regno";
        SqlCommand cmd = new SqlCommand(query, con);
        string regno = ((TextBox)(Loginf.FindControl("UserName"))).Text;
        cmd.Parameters.AddWithValue("regno", regno);

        SqlDataReader rdr = cmd.ExecuteReader();
        while (rdr.Read())
        {
            string pwd = rdr["passwd"].ToString();
            string pwd2 = ((TextBox)(Loginf.FindControl("password"))).Text;
            if (pwd.Equals(pwd2))
            {
                Session["name"] = rdr["name"].ToString();
                Session["branch"] = rdr["branch"].ToString();
                Session["regno"] = rdr["regno"].ToString();
                Session["cgpa"] = rdr["cgpa"].ToString();
                string ex = "Student.aspx";
                if (rdr["regno"].ToString().Equals("admin") && rdr["post"].Equals("none"))
                    ex = "Admin.aspx";
                FormsAuthentication.SetAuthCookie(Session["name"].ToString(), createPersistentCookie: false);

                string continueUrl = "Default.aspx";
                if (!OpenAuth.IsLocalUrl(continueUrl))
                    continueUrl = "~/Account/"+ex;
                Response.Redirect(continueUrl);

            }
            else
                ((Label)(Loginf.FindControl("inv"))).Text = "Wrong password.";
        }
    }
}