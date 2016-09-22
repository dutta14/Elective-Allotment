using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Options : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Results.aspx?id=1");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Results.aspx?id=2");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Results.aspx?id=3");
    }
}