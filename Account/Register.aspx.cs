using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class Account_Register : Page
{
    DropDownList college, branch;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];

        branch = RegisterUserWizardStep.ContentTemplateContainer.FindControl("branch") as DropDownList;
    }

    protected void RegisterUser_CreatedUser(object sender, EventArgs e)
    {
        FormsAuthentication.SetAuthCookie(RegisterUser.UserName, createPersistentCookie: false);
        
            //adding user to database.
            string conn = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conn);
            con.Open();

            string name = (RegisterUserWizardStep.ContentTemplateContainer.FindControl("UserName") as TextBox).Text,
                   regno = (RegisterUserWizardStep.ContentTemplateContainer.FindControl("regno") as TextBox).Text,
                   college = (RegisterUserWizardStep.ContentTemplateContainer.FindControl("college") as Label).Text,
                   branch = (RegisterUserWizardStep.ContentTemplateContainer.FindControl("branch") as DropDownList).SelectedItem.Text,
                   password = (RegisterUserWizardStep.ContentTemplateContainer.FindControl("password") as TextBox).Text,
                   cgpa = (RegisterUserWizardStep.ContentTemplateContainer.FindControl("cgpa") as TextBox).Text;



            string query = "insert into dbo.Users values(@name,@regno,@college,@branch,@password,@cgpa)";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("name", name);
            cmd.Parameters.AddWithValue("regno", regno);
            cmd.Parameters.AddWithValue("college", college);
            cmd.Parameters.AddWithValue("branch", branch);
            cmd.Parameters.AddWithValue("password", password);
            cmd.Parameters.AddWithValue("cgpa", cgpa);

            cmd.ExecuteNonQuery();

            Session["name"] = name;
            Session["branch"] = branch;
            Session["cgpa"] = cgpa;
            Session["regno"] = regno;
        string continueUrl = RegisterUser.ContinueDestinationPageUrl;
        if (!OpenAuth.IsLocalUrl(continueUrl))
        {
            continueUrl = "~/Account/Student.aspx";
        }
        Response.Redirect(continueUrl);
    }

}