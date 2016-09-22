using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Redirect("~/Default.aspx");
        }
        
    }

    protected void sel_sub_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Account/Subject_select.aspx");
    }
    protected void view_res_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Account/View_Result.aspx");
    }
}